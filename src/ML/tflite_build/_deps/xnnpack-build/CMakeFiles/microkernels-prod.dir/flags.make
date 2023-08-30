# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# compile C with /usr/bin/cc
C_DEFINES = -DEIGEN_MPL2_ONLY -DFXDIV_USE_INLINE_ASSEMBLY=0 -DNOMINMAX=1 -DPTHREADPOOL_NO_DEPRECATED_API=1 -DXNN_ENABLE_ARM_BF16=1 -DXNN_ENABLE_ARM_DOTPROD=1 -DXNN_ENABLE_ARM_FP16_SCALAR=1 -DXNN_ENABLE_ARM_FP16_VECTOR=1 -DXNN_ENABLE_ARM_I8MM=1 -DXNN_ENABLE_ASSEMBLY=1 -DXNN_ENABLE_CPUINFO=1 -DXNN_ENABLE_DWCONV_MULTIPASS=0 -DXNN_ENABLE_GEMM_M_SPECIALIZATION=1 -DXNN_ENABLE_JIT=0 -DXNN_ENABLE_MEMOPT=1 -DXNN_ENABLE_RISCV_VECTOR=1 -DXNN_ENABLE_SPARSE=1

C_INCLUDES = -I/home/jiahuan/MLsys/tflite_build/xnnpack/src -I/home/jiahuan/MLsys/tflite_build/pthreadpool-source/include -I/home/jiahuan/MLsys/tflite_build/FXdiv-source/include -I/home/jiahuan/MLsys/tflite_build/FP16-source/include

C_FLAGS = -O3 -DNDEBUG -fPIC -Wno-psabi -O2 -pthread -std=c99

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/sse.c.o_FLAGS =  -msse -mno-sse2 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/sse2.c.o_FLAGS =  -msse2 -mno-sse3 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/ssse3.c.o_FLAGS =  -mssse3 -mno-sse4.1 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/sse41.c.o_FLAGS =  -msse4.1 -mno-sse4.2 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/avx.c.o_FLAGS =  -mavx -mno-avx2 -mno-fma -mno-f16c 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/f16c.c.o_FLAGS =  -mf16c -mno-avx2 -mno-fma 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/xop.c.o_FLAGS =  -mxop -mno-avx2 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/fma3.c.o_FLAGS =  -mf16c -mfma -mno-avx2 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/avx2.c.o_FLAGS =  -mf16c -mfma -mavx2 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/avx512f.c.o_FLAGS =  -mavx512f 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/avx512skx.c.o_FLAGS =  -mavx512f -mavx512cd -mavx512bw -mavx512dq -mavx512vl 

# Custom flags: _deps/xnnpack-build/CMakeFiles/microkernels-prod.dir/src/amalgam/gen/avx512vbmi.c.o_FLAGS =  -mavx512f -mavx512cd -mavx512bw -mavx512dq -mavx512vl -mavx512vbmi 
