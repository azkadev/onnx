import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppData {
  final ValueNotifier<ThemeMode> themeModeNotifier;
  bool isDebug = (kDebugMode);
  AppData({
    required this.themeModeNotifier,
  });
}
