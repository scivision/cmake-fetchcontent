cmake_minimum_required(VERSION 3.14...3.20)

project(child LANGUAGES Fortran)

add_library(times_two times_two.f90)
target_include_directories(times_two INTERFACE ${CMAKE_CURRENT_BINARY_DIR}/include)
set_target_properties(times_two PROPERTIES
  Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/include)
