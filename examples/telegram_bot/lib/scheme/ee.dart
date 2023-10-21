// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Ee extends JsonScheme {
  Ee(super.rawData);

  static Map get defaultData {
    return {"@type": "ee"};
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

  static Ee create({
    String special_type = "ee",
  }) {
    // Ee ee = Ee({
    Map ee_data_create_json = {
      "@type": special_type,
    };

    ee_data_create_json.removeWhere((key, value) => value == null);
    Ee ee_data_create = Ee(ee_data_create_json);

    return ee_data_create;
  }
}
