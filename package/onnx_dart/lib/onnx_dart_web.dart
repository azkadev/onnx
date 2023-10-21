 import 'package:onnx_dart/onnx_dart_core.dart';

class Onnx implements OnnxClass {
  @override
  late String path_library;

  @override
  Map invoke() {
    return {
      "@type": "web"
    };
  }
}
