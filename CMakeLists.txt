cmake_minimum_required(VERSION 3.1)
project(submoduledemo Fortran)

add_executable(errorstop demo.f90 errorstop.F90)
target_compile_definitions(errorstop PRIVATE F08)
target_compile_options(errorstop PRIVATE -g -O0)

