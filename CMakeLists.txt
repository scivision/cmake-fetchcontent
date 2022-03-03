cmake_minimum_required(VERSION 3.14...3.23)

project(child
LANGUAGES Fortran
VERSION 1.3.0
)

add_library(multiplier multiplier.f90)
target_include_directories(multiplier INTERFACE
$<BUILD_INTERFACE:${CMAKE_CURRENT_BINARY_DIR}/include>
$<INSTALL_INTERFACE:include>
)
set_target_properties(multiplier PROPERTIES
Fortran_MODULE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/include
)

install(TARGETS multiplier)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/include/multiplier.mod
TYPE INCLUDE
)

# CMake 3.21+
if(PROJECT_IS_TOP_LEVEL)
  message(STATUS "${PROJECT_NAME} is the top-level project")
else()
  message(STATUS "${PROJECT_NAME} is a subproject of ${CMAKE_PROJECT_NAME}")
endif()
