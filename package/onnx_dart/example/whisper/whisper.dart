import 'dart:typed_data';

import 'whisper_native.dart';
// if (dart.library.io) 'whisper_native.dart'
// if (dart.library.js) 'whisper_web.dart';

import 'dart:io';

import 'dart:async';

abstract class Whisper {
  static Whisper? _instance;
  String get modelPath;

  static Whisper load(String path) {
    _instance ??= getWhisper(path);
    return _instance!;
  }

  Future<String> doInference(Uint8List bytes);
}

void _runVerificationTest() async {
  final modelPath = await getModelPath('assets/models/whisper/whisper_tiny.onnx');
  final bytes = File("/home/galaxeus/Documents/galaxeus/app/onnx/package/onnx_dart/samples_jfk.wav").readAsBytesSync();
  final whisper = Whisper.load(modelPath);
  // final wavFile = await rootBundle.load('assets/audio_sample.wav');
  final result = await whisper.doInference(bytes);
  // setState(() {
  //
  print("""

-------- result ---------

${result}

-------------------------
""");
  // print(result.trim() == 'The rain and Spain falls mainly on the plane.');
  // _verifyPassed = result.trim() == 'The rain and Spain falls mainly on the plane.';
  // });
}

void _runPerformanceTest() async {
  final modelPath = await getModelPath('assets/models/whisper/whisper_tiny.onnx');
  final whisper = Whisper.load(modelPath);
  final result = await testPerformance(whisper);
  print(result);
  // setState(() {
  // _speedTestResult = result;
  // });
}

Future<String> testPerformance(Whisper whisper) async {
  // final wavFile = await rootBundle.load('assets/audio_sample.wav');
  final bytes = File("/home/galaxeus/Documents/galaxeus/app/onnx/package/onnx_dart/samples_jfk.wav").readAsBytesSync();
  const iterations = 3;
  final Stopwatch sw = Stopwatch();
  for (var i = 0; i < iterations; i++) {
    if (i == 1) {
      sw.start();
    }
    await whisper.doInference(bytes);
  }
  sw.stop();
  print('Whisper performance:');
  final average = sw.elapsedMilliseconds.toDouble() / (iterations - 1).toDouble();
  print('  Average: ${average.toStringAsFixed(0)} ms');
  print('  Total: ${sw.elapsedMilliseconds} ms');
  const fileDurationMs = 5000;
  final speedMultilper = fileDurationMs.toDouble() / average;
  print('  Speed multiplier: ${speedMultilper.toStringAsFixed(2)}x');
  print('  Model path: ${whisper.modelPath}');
  return speedMultilper.toStringAsFixed(2);
}

Future<String> getModelPath(String modelFilenameWithExtension) async {
  return "/home/galaxeus/Documents/models/whisper_small.onnx";
}

void main() {
  // print("sa");
  _runVerificationTest();
  _runPerformanceTest();
}
