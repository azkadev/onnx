export "onnx_dart_io.dart" if (dart.library.js) 'onnx_dart_web.dart';

 class OnnxClass {
  late String path_library;
  OnnxClass({String? pathLibrary}) {
    if (pathLibrary != null) {
      path_library = pathLibrary;
    }
  }

  Map invoke() {

    return {};
  }
}
