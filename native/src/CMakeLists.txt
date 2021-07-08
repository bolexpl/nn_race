cmake_minimum_required(VERSION 3.19)
project(src)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_EXE_LINKER_FLAGS "-static -static-libgcc -static-libstdc++")

find_package(Matlab REQUIRED)
include_directories("${Matlab_ROOT_DIR}/extern/include")

include_directories(
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/godot-headers/
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/include/
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/include/core/
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/include/gen/
)

if(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    message(STATUS "CMAKE_SYSTEM_NAME = Linux")
    set(lib_ext "a")
    set(lib_system "linux")
endif()
if(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    message(STATUS "CMAKE_SYSTEM_NAME = Windows")
    set(lib_ext "lib")
    set(lib_system "windows")
endif()

add_library(gdneural SHARED gdlibrary.cpp
        Neural.cpp Neural.h
        ${CMAKE_SOURCE_DIR}/matlib/GdNet.h
        ${CMAKE_SOURCE_DIR}/matlib/gdNet_data.h
        ${CMAKE_SOURCE_DIR}/matlib/gdNet_types.h
        ${CMAKE_SOURCE_DIR}/matlib/rtwtypes.h
        )

target_link_libraries(gdneural ${CMAKE_SOURCE_DIR}/godot-cpp/bin/libgodot-cpp.${lib_system}.debug.64.a)
target_link_libraries(gdneural ${CMAKE_SOURCE_DIR}/matlib/gdNet.${lib_ext})
if(${CMAKE_SYSTEM_NAME} MATCHES "Windows")
    target_link_options(gdneural PRIVATE -static -static-libgcc -static-libstdc++)
endif()
