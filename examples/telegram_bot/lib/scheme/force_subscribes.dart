// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ForceSubscribes extends JsonScheme {
  ForceSubscribes(super.rawData);

  static Map get defaultData {
    return {
      "user_id": 1201201201,
      "expire_date": 1301301031,
      "@type": "force_subscribes"
    };
  }

  int? get user_id {
    try {
      if (rawData["user_id"] is int == false) {
        return null;
      }
      return rawData["user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get expire_date {
    try {
      if (rawData["expire_date"] is int == false) {
        return null;
      }
      return rawData["expire_date"] as int;
    } catch (e) {
      return null;
    }
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

  static ForceSubscribes create({
    int? user_id,
    int? expire_date,
    String special_type = "force_subscribes",
  }) {
    // ForceSubscribes forceSubscribes = ForceSubscribes({
    Map forceSubscribes_data_create_json = {
      "user_id": user_id,
      "expire_date": expire_date,
      "@type": special_type,
    };

    forceSubscribes_data_create_json.removeWhere((key, value) => value == null);
    ForceSubscribes forceSubscribes_data_create =
        ForceSubscribes(forceSubscribes_data_create_json);

    return forceSubscribes_data_create;
  }
}
