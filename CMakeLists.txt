cmake_minimum_required(VERSION 3.1)
project(submoduledemo Fortran)
enable_testing()

add_executable(errorstop demo.f90 errorstop.F90)
target_compile_definitions(errorstop PRIVATE F08)
target_compile_options(errorstop PRIVATE -g -O0)
add_test(NAME ErrorStop COMMAND errorstop)
set_tests_properties(ErrorStop PROPERTIES WILL_FAIL true)

