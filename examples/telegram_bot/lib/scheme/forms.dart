// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Forms extends JsonScheme {
  Forms(super.rawData);

  static Map get defaultData {
    return {"@type": "forms"};
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

  static Forms create({
    String special_type = "forms",
  }) {
    // Forms forms = Forms({
    Map forms_data_create_json = {
      "@type": special_type,
    };

    forms_data_create_json.removeWhere((key, value) => value == null);
    Forms forms_data_create = Forms(forms_data_create_json);

    return forms_data_create;
  }
}
