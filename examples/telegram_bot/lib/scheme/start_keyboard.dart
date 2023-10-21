// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class StartKeyboard extends JsonScheme {
  StartKeyboard(super.rawData);

  static Map get defaultData {
    return {"@type": "start_keyboard", "remove_keyboard": false};
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get remove_keyboard {
    try {
      if (rawData["remove_keyboard"] is bool == false) {
        return null;
      }
      return rawData["remove_keyboard"] as bool;
    } catch (e) {
      return null;
    }
  }

  static StartKeyboard create({
    String special_type = "start_keyboard",
    bool? remove_keyboard,
  }) {
    // StartKeyboard startKeyboard = StartKeyboard({
    Map startKeyboard_data_create_json = {
      "@type": special_type,
      "remove_keyboard": remove_keyboard,
    };

    startKeyboard_data_create_json.removeWhere((key, value) => value == null);
    StartKeyboard startKeyboard_data_create =
        StartKeyboard(startKeyboard_data_create_json);

    return startKeyboard_data_create;
  }
}
