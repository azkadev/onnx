// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class StoreData extends JsonScheme {
  StoreData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "StoreData",
      "client_user_id": 0,
      "name": "",
      "username": "",
      "keywords": [""]
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

  int? get client_user_id {
    try {
      if (rawData["client_user_id"] is int == false) {
        return null;
      }
      return rawData["client_user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get username {
    try {
      if (rawData["username"] is String == false) {
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }

  List<String> get keywords {
    try {
      if (rawData["keywords"] is List == false) {
        return [];
      }
      return (rawData["keywords"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  static StoreData create({
    String special_type = "StoreData",
    int? client_user_id,
    String? name,
    String? username,
    List<String>? keywords,
  }) {
    // StoreData storeData = StoreData({
    Map storeData_data_create_json = {
      "@type": special_type,
      "client_user_id": client_user_id,
      "name": name,
      "username": username,
      "keywords": keywords,
    };

    storeData_data_create_json.removeWhere((key, value) => value == null);
    StoreData storeData_data_create = StoreData(storeData_data_create_json);

    return storeData_data_create;
  }
}
