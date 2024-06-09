cmake_minimum_required(VERSION 3.10)

# Set the project name
project(ThreadPoolExample)

# Set the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the executable
add_executable(ThreadPoolExample main.cpp thread_pool.cpp)

# Include directories
target_include_directories(ThreadPoolExample PUBLIC "${PROJECT_SOURCE_DIR}")
