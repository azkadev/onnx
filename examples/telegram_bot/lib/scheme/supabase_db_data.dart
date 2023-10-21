// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class SupabaseDbData extends JsonScheme {
  SupabaseDbData(super.rawData);

  static Map get defaultData {
    return {"@type": "supabaseDbData", "key": "", "url": ""};
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

  String? get key {
    try {
      if (rawData["key"] is String == false) {
        return null;
      }
      return rawData["key"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      if (rawData["url"] is String == false) {
        return null;
      }
      return rawData["url"] as String;
    } catch (e) {
      return null;
    }
  }

  static SupabaseDbData create({
    String special_type = "supabaseDbData",
    String? key,
    String? url,
  }) {
    // SupabaseDbData supabaseDbData = SupabaseDbData({
    Map supabaseDbData_data_create_json = {
      "@type": special_type,
      "key": key,
      "url": url,
    };

    supabaseDbData_data_create_json.removeWhere((key, value) => value == null);
    SupabaseDbData supabaseDbData_data_create =
        SupabaseDbData(supabaseDbData_data_create_json);

    return supabaseDbData_data_create;
  }
}
