// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class AccesKeyboardData extends JsonScheme {
  AccesKeyboardData(super.rawData);

  static Map get defaultData {
    return {"@type": "accesKeyboardData", "remove_keyboard": false};
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

  static AccesKeyboardData create({
    String special_type = "accesKeyboardData",
    bool? remove_keyboard,
  }) {
    // AccesKeyboardData accesKeyboardData = AccesKeyboardData({
    Map accesKeyboardData_data_create_json = {
      "@type": special_type,
      "remove_keyboard": remove_keyboard,
    };

    accesKeyboardData_data_create_json
        .removeWhere((key, value) => value == null);
    AccesKeyboardData accesKeyboardData_data_create =
        AccesKeyboardData(accesKeyboardData_data_create_json);

    return accesKeyboardData_data_create;
  }
}
