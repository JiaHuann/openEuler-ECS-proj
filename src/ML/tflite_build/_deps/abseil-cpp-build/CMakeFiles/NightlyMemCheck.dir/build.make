# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jiahuan/MLsys/tflite_build

# Utility rule file for NightlyMemCheck.

# Include any custom commands dependencies for this target.
include _deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/progress.make

_deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck:
	cd /home/jiahuan/MLsys/tflite_build/_deps/abseil-cpp-build && /usr/bin/ctest -D NightlyMemCheck

NightlyMemCheck: _deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck
NightlyMemCheck: _deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/build.make
.PHONY : NightlyMemCheck

# Rule to build all files generated by this target.
_deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/build: NightlyMemCheck
.PHONY : _deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/build

_deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/clean:
	cd /home/jiahuan/MLsys/tflite_build/_deps/abseil-cpp-build && $(CMAKE_COMMAND) -P CMakeFiles/NightlyMemCheck.dir/cmake_clean.cmake
.PHONY : _deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/clean

_deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/depend:
	cd /home/jiahuan/MLsys/tflite_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/c /home/jiahuan/MLsys/tflite_build/abseil-cpp /home/jiahuan/MLsys/tflite_build /home/jiahuan/MLsys/tflite_build/_deps/abseil-cpp-build /home/jiahuan/MLsys/tflite_build/_deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/abseil-cpp-build/CMakeFiles/NightlyMemCheck.dir/depend

