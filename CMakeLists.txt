cmake_minimum_required(VERSION 3.1)
project(submoduledemo LANGUAGES NONE)
enable_testing()

include(CheckLanguage)
check_language(Fortran)
if(CMAKE_Fortran_COMPILER)
  enable_language(Fortran)

  add_executable(errorstop errorstop.f90)
  add_test(NAME ErrorStop COMMAND errorstop)
  set_tests_properties(ErrorStop PROPERTIES WILL_FAIL true)
endif()
