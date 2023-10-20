cmake_minimum_required(VERSION 3.10)
project(onnx_flutter_library VERSION 0.0.0 LANGUAGES C CXX)

add_library(onnx_flutter SHARED
  "onnx.cpp"
)

set_target_properties(onnx_flutter PROPERTIES
  # PUBLIC_HEADER onnx_flutter.h
  OUTPUT_NAME "onnx"
)

target_compile_definitions(onnx_flutter PUBLIC DART_SHARED_LIB)
