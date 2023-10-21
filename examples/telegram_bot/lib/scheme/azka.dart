// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "aa.dart";

class Azka extends JsonScheme {
  Azka(super.rawData);

  static Map get defaultData {
    return {
      "@type": "Azka",
      "method": "",
      "data": {"@type": "aa"}
    };
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

  String? get method {
    try {
      if (rawData["method"] is String == false) {
        return null;
      }
      return rawData["method"] as String;
    } catch (e) {
      return null;
    }
  }

  Aa get data {
    try {
      if (rawData["data"] is Map == false) {
        return Aa({});
      }
      return Aa(rawData["data"] as Map);
    } catch (e) {
      return Aa({});
    }
  }

  static Azka create({
    String special_type = "Azka",
    String? method,
    Aa? data,
  }) {
    // Azka azka = Azka({
    Map azka_data_create_json = {
      "@type": special_type,
      "method": method,
      "data": (data != null) ? data.toJson() : null,
    };

    azka_data_create_json.removeWhere((key, value) => value == null);
    Azka azka_data_create = Azka(azka_data_create_json);

    return azka_data_create;
  }
}
