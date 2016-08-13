cmake_minimum_required(VERSION 3.2)
project(SP4)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES Main.cpp Interface.cpp)
add_executable(SP4 ${SOURCE_FILES})