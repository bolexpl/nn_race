cmake_minimum_required(VERSION 3.19)
project(gdneural)

set(CMAKE_CXX_STANDARD 14)

include_directories(
        /home/bolek/sda6/MATLAB/R2021a/extern/include
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/godot-headers/
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/include/
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/include/core/
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/include/gen/
)

add_library(lib OBJECT IMPORTED)
set_property(TARGET lib PROPERTY IMPORTED_OBJECTS
        godot-cpp/bin/libgodot-cpp.linux.debug.64.a)

add_library(netlib OBJECT IMPORTED)
set_property(TARGET netlib PROPERTY IMPORTED_OBJECTS lib/gdNetLib.a)

add_library(gdneural SHARED gdlibrary.cpp
        $<TARGET_OBJECTS:lib>
        $<TARGET_OBJECTS:netlib>
        lib/GdNeural.h
        lib/gdNetLib_data.h
        lib/gdNetLib_types.h
        lib/rtwtypes.h
        Neural.cpp Neural.h)


