cmake_minimum_required(VERSION 3.0)
project(HelloLibrary)

find_package(Hello REQUIRED)

# Build the shared library
add_executable(hello main.cpp)
target_link_libraries(hello Hello::hello)
