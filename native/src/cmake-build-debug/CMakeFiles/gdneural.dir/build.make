# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/bolek/sda6/home/toolbox/apps/apps/CLion/ch-0/211.7628.27/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/bolek/sda6/home/toolbox/apps/apps/CLion/ch-0/211.7628.27/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/bolek/Dokumenty/Godot/nn_race/native/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bolek/Dokumenty/Godot/nn_race/native/src/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/gdneural.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gdneural.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gdneural.dir/flags.make

CMakeFiles/gdneural.dir/gdlibrary.cpp.o: CMakeFiles/gdneural.dir/flags.make
CMakeFiles/gdneural.dir/gdlibrary.cpp.o: ../gdlibrary.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bolek/Dokumenty/Godot/nn_race/native/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gdneural.dir/gdlibrary.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gdneural.dir/gdlibrary.cpp.o -c /home/bolek/Dokumenty/Godot/nn_race/native/src/gdlibrary.cpp

CMakeFiles/gdneural.dir/gdlibrary.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gdneural.dir/gdlibrary.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bolek/Dokumenty/Godot/nn_race/native/src/gdlibrary.cpp > CMakeFiles/gdneural.dir/gdlibrary.cpp.i

CMakeFiles/gdneural.dir/gdlibrary.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gdneural.dir/gdlibrary.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bolek/Dokumenty/Godot/nn_race/native/src/gdlibrary.cpp -o CMakeFiles/gdneural.dir/gdlibrary.cpp.s

CMakeFiles/gdneural.dir/Neural.cpp.o: CMakeFiles/gdneural.dir/flags.make
CMakeFiles/gdneural.dir/Neural.cpp.o: ../Neural.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/bolek/Dokumenty/Godot/nn_race/native/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gdneural.dir/Neural.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gdneural.dir/Neural.cpp.o -c /home/bolek/Dokumenty/Godot/nn_race/native/src/Neural.cpp

CMakeFiles/gdneural.dir/Neural.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gdneural.dir/Neural.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bolek/Dokumenty/Godot/nn_race/native/src/Neural.cpp > CMakeFiles/gdneural.dir/Neural.cpp.i

CMakeFiles/gdneural.dir/Neural.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gdneural.dir/Neural.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bolek/Dokumenty/Godot/nn_race/native/src/Neural.cpp -o CMakeFiles/gdneural.dir/Neural.cpp.s

# Object files for target gdneural
gdneural_OBJECTS = \
"CMakeFiles/gdneural.dir/gdlibrary.cpp.o" \
"CMakeFiles/gdneural.dir/Neural.cpp.o"

# External object files for target gdneural
gdneural_EXTERNAL_OBJECTS =

libgdneural.so: CMakeFiles/gdneural.dir/gdlibrary.cpp.o
libgdneural.so: CMakeFiles/gdneural.dir/Neural.cpp.o
libgdneural.so: CMakeFiles/gdneural.dir/build.make
libgdneural.so: ../godot-cpp/bin/libgodot-cpp.linux.debug.64.a
libgdneural.so: ../matlib/gdNet.a
libgdneural.so: CMakeFiles/gdneural.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/bolek/Dokumenty/Godot/nn_race/native/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libgdneural.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gdneural.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gdneural.dir/build: libgdneural.so

.PHONY : CMakeFiles/gdneural.dir/build

CMakeFiles/gdneural.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gdneural.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gdneural.dir/clean

CMakeFiles/gdneural.dir/depend:
	cd /home/bolek/Dokumenty/Godot/nn_race/native/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bolek/Dokumenty/Godot/nn_race/native/src /home/bolek/Dokumenty/Godot/nn_race/native/src /home/bolek/Dokumenty/Godot/nn_race/native/src/cmake-build-debug /home/bolek/Dokumenty/Godot/nn_race/native/src/cmake-build-debug /home/bolek/Dokumenty/Godot/nn_race/native/src/cmake-build-debug/CMakeFiles/gdneural.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gdneural.dir/depend

