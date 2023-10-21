import 'dart:typed_data';

import 'whisper.dart';


WhisperClass getWhisper(String path) => Whisper(path);

class Whisper implements WhisperClass {
  @override
  final String modelPath;

  Whisper(this.modelPath);

  @override
  Future<String> doInference(Uint8List bytes) {
    throw UnimplementedError();
  }
}
