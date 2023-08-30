
if(NOT "/home/jiahuan/MLsys/tflite_build/src/xnnpack-populate-stamp/xnnpack-populate-gitinfo.txt" IS_NEWER_THAN "/home/jiahuan/MLsys/tflite_build/src/xnnpack-populate-stamp/xnnpack-populate-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/jiahuan/MLsys/tflite_build/src/xnnpack-populate-stamp/xnnpack-populate-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/jiahuan/MLsys/tflite_build/xnnpack"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/jiahuan/MLsys/tflite_build/xnnpack'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --progress --config "advice.detachedHead=false" "https://github.com/google/XNNPACK" "xnnpack"
    WORKING_DIRECTORY "/home/jiahuan/MLsys/tflite_build"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/google/XNNPACK'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout 1d5830644349f5c66ddc3846c32b16010ac4cf4f --
  WORKING_DIRECTORY "/home/jiahuan/MLsys/tflite_build/xnnpack"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '1d5830644349f5c66ddc3846c32b16010ac4cf4f'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/jiahuan/MLsys/tflite_build/xnnpack"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/jiahuan/MLsys/tflite_build/xnnpack'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/jiahuan/MLsys/tflite_build/src/xnnpack-populate-stamp/xnnpack-populate-gitinfo.txt"
    "/home/jiahuan/MLsys/tflite_build/src/xnnpack-populate-stamp/xnnpack-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/jiahuan/MLsys/tflite_build/src/xnnpack-populate-stamp/xnnpack-populate-gitclone-lastrun.txt'")
endif()

