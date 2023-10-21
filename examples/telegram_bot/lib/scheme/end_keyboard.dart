// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class EndKeyboard extends JsonScheme {
  EndKeyboard(super.rawData);

  static Map get defaultData {
    return {"@type": "end_keyboard", "remove_keyboard": false};
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

  static EndKeyboard create({
    String special_type = "end_keyboard",
    bool? remove_keyboard,
  }) {
    // EndKeyboard endKeyboard = EndKeyboard({
    Map endKeyboard_data_create_json = {
      "@type": special_type,
      "remove_keyboard": remove_keyboard,
    };

    endKeyboard_data_create_json.removeWhere((key, value) => value == null);
    EndKeyboard endKeyboard_data_create =
        EndKeyboard(endKeyboard_data_create_json);

    return endKeyboard_data_create;
  }
}
