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

# Include any dependencies generated for this target.
include _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/flags.make

_deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.o: _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/flags.make
_deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.o: fft2d/fftsg.c
_deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.o: _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiahuan/MLsys/tflite_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.o"
	cd /home/jiahuan/MLsys/tflite_build/_deps/fft2d-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.o -MF CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.o.d -o CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.o -c /home/jiahuan/MLsys/tflite_build/fft2d/fftsg.c

_deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.i"
	cd /home/jiahuan/MLsys/tflite_build/_deps/fft2d-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jiahuan/MLsys/tflite_build/fft2d/fftsg.c > CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.i

_deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.s"
	cd /home/jiahuan/MLsys/tflite_build/_deps/fft2d-build && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jiahuan/MLsys/tflite_build/fft2d/fftsg.c -o CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.s

# Object files for target fft2d_fftsg
fft2d_fftsg_OBJECTS = \
"CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.o"

# External object files for target fft2d_fftsg
fft2d_fftsg_EXTERNAL_OBJECTS =

_deps/fft2d-build/libfft2d_fftsg.a: _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/__/__/fft2d/fftsg.c.o
_deps/fft2d-build/libfft2d_fftsg.a: _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/build.make
_deps/fft2d-build/libfft2d_fftsg.a: _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libfft2d_fftsg.a"
	cd /home/jiahuan/MLsys/tflite_build/_deps/fft2d-build && $(CMAKE_COMMAND) -P CMakeFiles/fft2d_fftsg.dir/cmake_clean_target.cmake
	cd /home/jiahuan/MLsys/tflite_build/_deps/fft2d-build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fft2d_fftsg.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/build: _deps/fft2d-build/libfft2d_fftsg.a
.PHONY : _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/build

_deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/clean:
	cd /home/jiahuan/MLsys/tflite_build/_deps/fft2d-build && $(CMAKE_COMMAND) -P CMakeFiles/fft2d_fftsg.dir/cmake_clean.cmake
.PHONY : _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/clean

_deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/depend:
	cd /home/jiahuan/MLsys/tflite_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/c /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/tools/cmake/modules/fft2d /home/jiahuan/MLsys/tflite_build /home/jiahuan/MLsys/tflite_build/_deps/fft2d-build /home/jiahuan/MLsys/tflite_build/_deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/fft2d-build/CMakeFiles/fft2d_fftsg.dir/depend

