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
include CMakeFiles/tensorflowlite_c.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tensorflowlite_c.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tensorflowlite_c.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tensorflowlite_c.dir/flags.make

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.o: CMakeFiles/tensorflowlite_c.dir/flags.make
CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.o: /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc
CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.o: CMakeFiles/tensorflowlite_c.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiahuan/MLsys/tflite_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.o -MF CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.o.d -o CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.o -c /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc > CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.i

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc -o CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.s

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.o: CMakeFiles/tensorflowlite_c.dir/flags.make
CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.o: /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc
CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.o: CMakeFiles/tensorflowlite_c.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiahuan/MLsys/tflite_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.o -MF CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.o.d -o CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.o -c /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc > CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.i

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc -o CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.s

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.o: CMakeFiles/tensorflowlite_c.dir/flags.make
CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.o: /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc
CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.o: CMakeFiles/tensorflowlite_c.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiahuan/MLsys/tflite_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.o -MF CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.o.d -o CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.o -c /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc > CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.i

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc -o CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.s

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.o: CMakeFiles/tensorflowlite_c.dir/flags.make
CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.o: /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc
CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.o: CMakeFiles/tensorflowlite_c.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jiahuan/MLsys/tflite_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.o -MF CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.o.d -o CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.o -c /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc > CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.i

CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc -o CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.s

# Object files for target tensorflowlite_c
tensorflowlite_c_OBJECTS = \
"CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.o" \
"CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.o" \
"CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.o" \
"CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.o"

# External object files for target tensorflowlite_c
tensorflowlite_c_EXTERNAL_OBJECTS =

libtensorflowlite_c.so: CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api.cc.o
libtensorflowlite_c.so: CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/c_api_experimental.cc.o
libtensorflowlite_c.so: CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/common.cc.o
libtensorflowlite_c.so: CMakeFiles/tensorflowlite_c.dir/home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/core/c/registration_external.cc.o
libtensorflowlite_c.so: CMakeFiles/tensorflowlite_c.dir/build.make
libtensorflowlite_c.so: tensorflow-lite/libtensorflow-lite.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/flags/libabsl_flags.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/flags/libabsl_flags_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/flags/libabsl_flags_marshalling.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/flags/libabsl_flags_reflection.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/flags/libabsl_flags_config.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/flags/libabsl_flags_program_name.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/flags/libabsl_flags_private_handle_accessor.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/flags/libabsl_flags_commandlineflag.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/flags/libabsl_flags_commandlineflag_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/container/libabsl_raw_hash_set.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/container/libabsl_hashtablez_sampler.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/hash/libabsl_hash.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/hash/libabsl_city.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/hash/libabsl_low_level_hash.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/status/libabsl_status.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/strings/libabsl_cord.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/types/libabsl_bad_optional_access.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/strings/libabsl_cordz_info.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/strings/libabsl_cord_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/strings/libabsl_cordz_functions.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/profiling/libabsl_exponential_biased.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/strings/libabsl_cordz_handle.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/crc/libabsl_crc_cord_state.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/crc/libabsl_crc32c.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/crc/libabsl_crc_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/crc/libabsl_crc_cpu_detect.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/strings/libabsl_str_format_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/base/libabsl_strerror.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/synchronization/libabsl_synchronization.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/debugging/libabsl_stacktrace.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/debugging/libabsl_symbolize.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/debugging/libabsl_debugging_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/debugging/libabsl_demangle_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/synchronization/libabsl_graphcycles_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/base/libabsl_malloc_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/time/libabsl_time.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/strings/libabsl_strings.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/strings/libabsl_strings_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/base/libabsl_throw_delegate.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/base/libabsl_base.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/base/libabsl_spinlock_wait.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/numeric/libabsl_int128.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/time/libabsl_civil_time.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/time/libabsl_time_zone.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/types/libabsl_bad_variant_access.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/base/libabsl_raw_logging_internal.a
libtensorflowlite_c.so: _deps/abseil-cpp-build/absl/base/libabsl_log_severity.a
libtensorflowlite_c.so: _deps/farmhash-build/libfarmhash.a
libtensorflowlite_c.so: _deps/fft2d-build/libfft2d_fftsg2d.a
libtensorflowlite_c.so: _deps/fft2d-build/libfft2d_fftsg.a
libtensorflowlite_c.so: _deps/flatbuffers-build/libflatbuffers.a
libtensorflowlite_c.so: _deps/gemmlowp-build/libeight_bit_int_gemm.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_context_get_ctx.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_context.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_frontend.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_kernel_arm.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_kernel_avx.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_kernel_avx2_fma.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_kernel_avx512.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_apply_multiplier.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_pack_arm.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_pack_avx.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_pack_avx2_fma.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_pack_avx512.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_prepare_packed_matrices.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_trmul.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_ctx.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_allocator.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_prepacked_cache.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_system_aligned_alloc.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_have_built_path_for_avx.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_have_built_path_for_avx2_fma.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_have_built_path_for_avx512.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_thread_pool.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_blocking_counter.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_wait.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_denormal.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_block_map.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_tune.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/libruy_cpuinfo.a
libtensorflowlite_c.so: _deps/ruy-build/ruy/profiler/libruy_profiler_instrumentation.a
libtensorflowlite_c.so: _deps/xnnpack-build/libXNNPACK.a
libtensorflowlite_c.so: pthreadpool/libpthreadpool.a
libtensorflowlite_c.so: /usr/lib/x86_64-linux-gnu/libm.so
libtensorflowlite_c.so: _deps/cpuinfo-build/libcpuinfo.a
libtensorflowlite_c.so: CMakeFiles/tensorflowlite_c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jiahuan/MLsys/tflite_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libtensorflowlite_c.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tensorflowlite_c.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tensorflowlite_c.dir/build: libtensorflowlite_c.so
.PHONY : CMakeFiles/tensorflowlite_c.dir/build

CMakeFiles/tensorflowlite_c.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tensorflowlite_c.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tensorflowlite_c.dir/clean

CMakeFiles/tensorflowlite_c.dir/depend:
	cd /home/jiahuan/MLsys/tflite_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/c /home/jiahuan/MLsys/tensorflow_src/tensorflow/lite/c /home/jiahuan/MLsys/tflite_build /home/jiahuan/MLsys/tflite_build /home/jiahuan/MLsys/tflite_build/CMakeFiles/tensorflowlite_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tensorflowlite_c.dir/depend

