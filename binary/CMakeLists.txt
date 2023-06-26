cmake_minimum_required(VERSION 3.0)
project(HelloLibrary)

# Find the Hello library, from CMAKE_PREFIX_PATH (finds the
# lib/cmake/Hello/HelloConfig.cmake file)
find_package(Hello REQUIRED)

# Build the executable (loads the Hello::hello target from HelloConfig.cmake)
add_executable(hello main.cpp)
target_link_libraries(hello Hello::hello)

# Install the executable
install(TARGETS hello DESTINATION bin)
