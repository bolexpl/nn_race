cmake_minimum_required(VERSION 3.19)
project(src)

set(CMAKE_CXX_STANDARD 14)

include_directories(
        /home/bolek/sda6/MATLAB/R2021a/extern/include
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/godot-headers/
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/include/
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/include/core/
        ${CMAKE_CURRENT_SOURCE_DIR}/godot-cpp/include/gen/
)

add_library(matlib OBJECT IMPORTED)
set_property(TARGET matlib PROPERTY IMPORTED_OBJECTS
        godot-cpp/bin/libgodot-cpp.linux.debug.64.a)

add_library(netlib OBJECT IMPORTED)
set_property(TARGET netlib PROPERTY IMPORTED_OBJECTS matlib/gdNetLib.a)

add_library(gdneural SHARED gdlibrary.cpp
        $<TARGET_OBJECTS:matlib>
        $<TARGET_OBJECTS:netlib>
        matlib/GdNeural.h
        matlib/gdNetLib_data.h
        matlib/gdNetLib_types.h
        matlib/rtwtypes.h
        Neural.cpp Neural.h)