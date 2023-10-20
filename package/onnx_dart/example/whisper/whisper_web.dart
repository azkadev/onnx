import 'dart:typed_data';

import 'whisper.dart';


Whisper getWhisper(String path) => WhisperWeb(path);

class WhisperWeb implements Whisper {
  @override
  final String modelPath;

  WhisperWeb(this.modelPath);

  @override
  Future<String> doInference(Uint8List bytes) {
    throw UnimplementedError();
  }
}
