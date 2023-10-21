// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class AppAccountGalaxeus extends JsonScheme {
  AppAccountGalaxeus(super.rawData);

  static Map get defaultData {
    return {
      "@type": "appAccountGalaxeus",
      "isar_data_id": 0,
      "id": 0,
      "created_at": "",
      "date": 0,
      "meesagee_user_id": 0
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

  int? get isar_data_id {
    try {
      if (rawData["isar_data_id"] is int == false) {
        return null;
      }
      return rawData["isar_data_id"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      if (rawData["id"] is int == false) {
        return null;
      }
      return rawData["id"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get created_at {
    try {
      if (rawData["created_at"] is String == false) {
        return null;
      }
      return rawData["created_at"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      if (rawData["date"] is int == false) {
        return null;
      }
      return rawData["date"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get meesagee_user_id {
    try {
      if (rawData["meesagee_user_id"] is int == false) {
        return null;
      }
      return rawData["meesagee_user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  static AppAccountGalaxeus create({
    String special_type = "appAccountGalaxeus",
    int? isar_data_id,
    int? id,
    String? created_at,
    int? date,
    int? meesagee_user_id,
  }) {
    // AppAccountGalaxeus appAccountGalaxeus = AppAccountGalaxeus({
    Map appAccountGalaxeus_data_create_json = {
      "@type": special_type,
      "isar_data_id": isar_data_id,
      "id": id,
      "created_at": created_at,
      "date": date,
      "meesagee_user_id": meesagee_user_id,
    };

    appAccountGalaxeus_data_create_json
        .removeWhere((key, value) => value == null);
    AppAccountGalaxeus appAccountGalaxeus_data_create =
        AppAccountGalaxeus(appAccountGalaxeus_data_create_json);

    return appAccountGalaxeus_data_create;
  }
}
