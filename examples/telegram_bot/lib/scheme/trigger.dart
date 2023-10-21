// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Trigger extends JsonScheme {
  Trigger(super.rawData);

  static Map get defaultData {
    return {"@type": "trigger"};
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

  static Trigger create({
    String special_type = "trigger",
  }) {
    // Trigger trigger = Trigger({
    Map trigger_data_create_json = {
      "@type": special_type,
    };

    trigger_data_create_json.removeWhere((key, value) => value == null);
    Trigger trigger_data_create = Trigger(trigger_data_create_json);

    return trigger_data_create;
  }
}
