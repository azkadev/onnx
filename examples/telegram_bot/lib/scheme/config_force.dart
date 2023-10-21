// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ConfigForce extends JsonScheme {
  ConfigForce(super.rawData);

  static Map get defaultData {
    return {"@type": "configForce"};
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

  static ConfigForce create({
    String special_type = "configForce",
  }) {
    // ConfigForce configForce = ConfigForce({
    Map configForce_data_create_json = {
      "@type": special_type,
    };

    configForce_data_create_json.removeWhere((key, value) => value == null);
    ConfigForce configForce_data_create =
        ConfigForce(configForce_data_create_json);

    return configForce_data_create;
  }
}
