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
CMAKE_SOURCE_DIR = /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild

# Utility rule file for neon2sse-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/neon2sse-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/neon2sse-populate.dir/progress.make

CMakeFiles/neon2sse-populate: CMakeFiles/neon2sse-populate-complete

CMakeFiles/neon2sse-populate-complete: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-install
CMakeFiles/neon2sse-populate-complete: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-mkdir
CMakeFiles/neon2sse-populate-complete: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-download
CMakeFiles/neon2sse-populate-complete: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-update
CMakeFiles/neon2sse-populate-complete: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-patch
CMakeFiles/neon2sse-populate-complete: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-configure
CMakeFiles/neon2sse-populate-complete: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-build
CMakeFiles/neon2sse-populate-complete: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-install
CMakeFiles/neon2sse-populate-complete: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'neon2sse-populate'"
	/usr/bin/cmake -E make_directory /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles/neon2sse-populate-complete
	/usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-done

neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-build: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'neon2sse-populate'"
	cd /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-build && /usr/bin/cmake -E echo_append
	cd /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-build && /usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-build

neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-configure: neon2sse-populate-prefix/tmp/neon2sse-populate-cfgcmd.txt
neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-configure: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'neon2sse-populate'"
	cd /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-build && /usr/bin/cmake -E echo_append
	cd /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-build && /usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-configure

neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-download: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-urlinfo.txt
neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-download: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'neon2sse-populate'"
	cd /home/jiahuan/MLsys/tflite_build && /usr/bin/cmake -P /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/download-neon2sse-populate.cmake
	cd /home/jiahuan/MLsys/tflite_build && /usr/bin/cmake -P /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/verify-neon2sse-populate.cmake
	cd /home/jiahuan/MLsys/tflite_build && /usr/bin/cmake -P /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/extract-neon2sse-populate.cmake
	cd /home/jiahuan/MLsys/tflite_build && /usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-download

neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-install: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'neon2sse-populate'"
	cd /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-build && /usr/bin/cmake -E echo_append
	cd /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-build && /usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-install

neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'neon2sse-populate'"
	/usr/bin/cmake -E make_directory /home/jiahuan/MLsys/tflite_build/neon2sse
	/usr/bin/cmake -E make_directory /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-build
	/usr/bin/cmake -E make_directory /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix
	/usr/bin/cmake -E make_directory /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp
	/usr/bin/cmake -E make_directory /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src
	/usr/bin/cmake -E make_directory /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp
	/usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-mkdir

neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-patch: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'neon2sse-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-patch

neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-test: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'neon2sse-populate'"
	cd /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-build && /usr/bin/cmake -E echo_append
	cd /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-build && /usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-test

neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-update: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "No update step for 'neon2sse-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-update

neon2sse-populate: CMakeFiles/neon2sse-populate
neon2sse-populate: CMakeFiles/neon2sse-populate-complete
neon2sse-populate: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-build
neon2sse-populate: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-configure
neon2sse-populate: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-download
neon2sse-populate: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-install
neon2sse-populate: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-mkdir
neon2sse-populate: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-patch
neon2sse-populate: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-test
neon2sse-populate: neon2sse-populate-prefix/src/neon2sse-populate-stamp/neon2sse-populate-update
neon2sse-populate: CMakeFiles/neon2sse-populate.dir/build.make
.PHONY : neon2sse-populate

# Rule to build all files generated by this target.
CMakeFiles/neon2sse-populate.dir/build: neon2sse-populate
.PHONY : CMakeFiles/neon2sse-populate.dir/build

CMakeFiles/neon2sse-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/neon2sse-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/neon2sse-populate.dir/clean

CMakeFiles/neon2sse-populate.dir/depend:
	cd /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild /home/jiahuan/MLsys/tflite_build/_deps/neon2sse-subbuild/CMakeFiles/neon2sse-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/neon2sse-populate.dir/depend

