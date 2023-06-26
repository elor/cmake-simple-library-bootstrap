cmake_minimum_required(VERSION 3.0)
project(HelloLibrary)

add_library(hello SHARED src/hello.cpp)
target_include_directories(
  hello PUBLIC "$<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>"
               "$<INSTALL_INTERFACE:include>")

install(
  TARGETS hello
  EXPORT HelloTargets
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib
  RUNTIME DESTINATION bin
  INCLUDES
  DESTINATION include)

install(FILES include/hello.hpp DESTINATION include)

install(
  EXPORT HelloTargets
  FILE HelloConfig.cmake
  NAMESPACE Hello::
  DESTINATION lib/cmake/Hello)
