// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class WelcomeKeyboard extends JsonScheme {
  WelcomeKeyboard(super.rawData);

  static Map get defaultData {
    return {"@type": "welcome_keyboard", "remove_keyboard": false};
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

  static WelcomeKeyboard create({
    String special_type = "welcome_keyboard",
    bool? remove_keyboard,
  }) {
    // WelcomeKeyboard welcomeKeyboard = WelcomeKeyboard({
    Map welcomeKeyboard_data_create_json = {
      "@type": special_type,
      "remove_keyboard": remove_keyboard,
    };

    welcomeKeyboard_data_create_json.removeWhere((key, value) => value == null);
    WelcomeKeyboard welcomeKeyboard_data_create =
        WelcomeKeyboard(welcomeKeyboard_data_create_json);

    return welcomeKeyboard_data_create;
  }
}
