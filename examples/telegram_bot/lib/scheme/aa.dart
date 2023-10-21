// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Aa extends JsonScheme {
  Aa(super.rawData);

  static Map get defaultData {
    return {"@type": "aa"};
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

  static Aa create({
    String special_type = "aa",
  }) {
    // Aa aa = Aa({
    Map aa_data_create_json = {
      "@type": special_type,
    };

    aa_data_create_json.removeWhere((key, value) => value == null);
    Aa aa_data_create = Aa(aa_data_create_json);

    return aa_data_create;
  }
}
