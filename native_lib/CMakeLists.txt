cmake_minimum_required(VERSION 3.16)

project(onnx_library VERSION 0.0.1 LANGUAGES C CXX)
set(CMAKE_CXX_STANDARD 20)
 
message(STATUS "START COMPILE onnx")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")

set(onnx_shared_dir "lib")
set(onnx_exe_dir "bin")
set(prefix_shared_library "lib")
 

if (ANDROID)
 set(package_shared_extension "_${ANDROID_ARCH_NAME}.so")
 set(package_exe_extension "")
 set(package_name "onnx_${ANDROID_ARCH_NAME}")
elseif (WIN32)
 set(package_shared_extension ".dll")
 set(package_exe_extension ".exe") 
 set(package_name "onnx")
elseif (APPLE)
 set(package_shared_extension ".dylib")
 set(package_exe_extension "") 
 set(package_name "onnx")
else()
 set(package_shared_extension ".so")
 set(package_exe_extension "") 
 set(package_name "onnx")
endif()


add_library(onnx_shared SHARED onnx.cpp)
add_executable(onnx_exe onnx.cpp)

set_target_properties(onnx_shared PROPERTIES 
  LIBRARY_OUTPUT_DIRECTORY "${onnx_shared_dir}"
  PREFIX "${prefix_shared_library}"
  OUTPUT_NAME "${package_name}"
)

set_target_properties(onnx_exe PROPERTIES 
  RUNTIME_OUTPUT_DIRECTORY "${onnx_exe_dir}"
  OUTPUT_NAME "${package_name}"
)

if (WIN32)
 set_target_properties(onnx_shared PROPERTIES
  WINDOWS_EXPORT_ALL_SYMBOLS ON
)
endif (WIN32)
 
add_custom_command(
  TARGET onnx_shared POST_BUILD 
  COMMAND ${CMAKE_STRIP} --strip-debug --strip-unneeded "${onnx_shared_dir}/${prefix_shared_library}onnx${package_shared_extension}"
)

add_custom_command(
  TARGET onnx_exe POST_BUILD 
  COMMAND ${CMAKE_STRIP} --strip-debug --strip-unneeded "${onnx_exe_dir}/onnx${package_exe_extension}" 
)

 