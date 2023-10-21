// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ConfigInit extends JsonScheme {
  ConfigInit(super.rawData);

  static Map get defaultData {
    return {"@type": "configInit"};
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

  static ConfigInit create({
    String special_type = "configInit",
  }) {
    // ConfigInit configInit = ConfigInit({
    Map configInit_data_create_json = {
      "@type": special_type,
    };

    configInit_data_create_json.removeWhere((key, value) => value == null);
    ConfigInit configInit_data_create = ConfigInit(configInit_data_create_json);

    return configInit_data_create;
  }
}
