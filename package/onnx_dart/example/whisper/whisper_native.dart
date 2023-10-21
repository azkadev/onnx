import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart'; 
import 'package:onnx_dart/onnx/ort.dart';
import 'package:onnx_dart/onnx/ort_ffi_bindings.dart' hide calloc, free;

import 'whisper.dart';

WhisperClass getWhisper(String path) => Whisper(path);

class Whisper implements WhisperClass {
  @override
  final String modelPath;
  OrtSessionObjects? _sessionObjects;
  Whisper(this.modelPath);

  @override
  Future<String> doInference(Uint8List bytes) {
    return _getTranscriptFfi(bytes);
  }

  OrtSessionObjects get _session {
    _sessionObjects ??= createOrtSession(modelPath, includeOnnxExtensionsOps: true);

    return _sessionObjects!;
  }

  Future<String> _getTranscriptFfi(Uint8List audio) async {
    final sw = Stopwatch()..start();

    final objects = _session;
    final memoryInfo = calloc<Pointer<OrtMemoryInfo>>();
    objects.api.createCpuMemoryInfo(memoryInfo);
    final audioStreamValue = calloc<Pointer<OrtValue>>();
    objects.api.createUint8Tensor(
      audioStreamValue,
      memoryInfo: memoryInfo.value,
      values: audio,
    );
    final maxLengthValue = calloc<Pointer<OrtValue>>();
    objects.api.createInt32Tensor(
      maxLengthValue,
      memoryInfo: memoryInfo.value,
      values: [200],
    );
    final minLengthValue = calloc<Pointer<OrtValue>>();
    objects.api.createInt32Tensor(
      minLengthValue,
      memoryInfo: memoryInfo.value,
      values: [0],
    );
    final numBeamsValue = calloc<Pointer<OrtValue>>();
    objects.api.createInt32Tensor(
      numBeamsValue,
      memoryInfo: memoryInfo.value,
      values: [2],
    );
    final numReturnSequencesValue = calloc<Pointer<OrtValue>>();
    objects.api.createInt32Tensor(
      numReturnSequencesValue,
      memoryInfo: memoryInfo.value,
      values: [1],
    );
    final lengthPenaltyValue = calloc<Pointer<OrtValue>>();
    objects.api.createFloat32Tensor(
      lengthPenaltyValue,
      memoryInfo: memoryInfo.value,
      values: [1.0],
    );
    final repetitionPenaltyValue = calloc<Pointer<OrtValue>>();
    objects.api.createFloat32Tensor(
      repetitionPenaltyValue,
      memoryInfo: memoryInfo.value,
      values: [1.0],
    );

    const kInputCount = 7;
    final inputNamesPointer = calloc<Pointer<Pointer<Char>>>(kInputCount);
    inputNamesPointer[0] = 'audio_stream'.toNativeUtf8().cast();
    inputNamesPointer[1] = 'max_length'.toNativeUtf8().cast();
    inputNamesPointer[2] = 'min_length'.toNativeUtf8().cast();
    inputNamesPointer[3] = 'num_beams'.toNativeUtf8().cast();
    inputNamesPointer[4] = 'num_return_sequences'.toNativeUtf8().cast();
    inputNamesPointer[5] = 'length_penalty'.toNativeUtf8().cast();
    inputNamesPointer[6] = 'repetition_penalty'.toNativeUtf8().cast();
    final inputNames = inputNamesPointer.cast<Pointer<Char>>();
    final inputValues = calloc<Pointer<OrtValue>>(kInputCount);
    inputValues[0] = audioStreamValue.value;
    inputValues[1] = maxLengthValue.value;
    inputValues[2] = minLengthValue.value;
    inputValues[3] = numBeamsValue.value;
    inputValues[4] = numReturnSequencesValue.value;
    inputValues[5] = lengthPenaltyValue.value;
    inputValues[6] = repetitionPenaltyValue.value;
    final outputNamesPointer = calloc<Pointer<Char>>();
    outputNamesPointer[0] = 'str'.toNativeUtf8().cast();
    final outputNames = outputNamesPointer.cast<Pointer<Char>>();
    final outputValues = calloc<Pointer<OrtValue>>();
    final runOptionsPtr = calloc<Pointer<OrtRunOptions>>();
    objects.api.createRunOptions(runOptionsPtr);
    sw.stop();
    print('preparation took ${sw.elapsedMilliseconds}ms');
    sw.reset();
    sw.start();
    objects.api.run(
      session: objects.sessionPtr.value,
      runOptions: runOptionsPtr.value,
      inputNames: inputNames,
      inputValues: inputValues,
      inputCount: kInputCount,
      outputNames: outputNames,
      outputCount: 1,
      outputValues: outputValues,
    );
    sw.stop();
    print('inference took ${sw.elapsedMilliseconds}ms');

    sw.reset();
    sw.start();
    final outputTensorDataPointer = calloc<Pointer<Void>>();
    objects.api.getTensorMutableData(outputValues.value, outputTensorDataPointer);

    final tensorTypeAndShape = calloc<Pointer<OrtTensorTypeAndShapeInfo>>();
    objects.api.getTensorTypeAndShape(outputValues.value, tensorTypeAndShape);
    final tensorElementType = calloc<Int32>();
    objects.api.getTensorElementType(tensorTypeAndShape.value, tensorElementType);
    assert(tensorElementType.value == ONNXTensorElementDataType.ONNX_TENSOR_ELEMENT_DATA_TYPE_STRING);

    final stringLengthPtr = calloc<Size>();
    objects.api.getStringTensorElementLength(outputValues.value, 0, stringLengthPtr);
    final stringLength = stringLengthPtr.value;
    final stringPtr = calloc<Uint8>(stringLength);
    objects.api.getStringTensorElement(outputValues.value, stringLength, 0, stringPtr.cast<Void>());
    final string = stringPtr.cast<Utf8>().toDartString(length: stringLength);
    // print(string);
    sw.stop();
    sw.reset();
    sw.start();
    calloc.free(memoryInfo);
    calloc.free(audioStreamValue);
    calloc.free(maxLengthValue);
    calloc.free(minLengthValue);
    calloc.free(numBeamsValue);
    calloc.free(numReturnSequencesValue);
    calloc.free(lengthPenaltyValue);
    calloc.free(repetitionPenaltyValue);
    calloc.free(inputNamesPointer);
    calloc.free(inputValues);
    calloc.free(outputNamesPointer);
    calloc.free(outputValues);
    calloc.free(runOptionsPtr);
    calloc.free(outputTensorDataPointer);
    sw.stop();
    
    print('cleanup took ${sw.elapsedMilliseconds}ms');
    return string;
  }
}
