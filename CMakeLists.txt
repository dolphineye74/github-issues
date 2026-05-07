# Minimum required version of CMake
cmake_minimum_required(VERSION 3.10)

# Project name and language
project(MinimalCase LANGUAGES CXX)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the thirdparties
set(CMAKE_MODULE_PATH ${CMAKE_CURRENT_SOURCE_DIR};${CMAKE_MODULE_PATH})
include(3rdparty/slang)

# Add the executable target
add_executable(MinimalCase Main.cpp)
target_link_libraries(MinimalCase core slang)
