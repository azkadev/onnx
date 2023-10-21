import 'package:onnx_dart/onnx_dart.dart';

void main(List<String> args) {
  Onnx onnx = Onnx();

  print(onnx.invoke());
}
