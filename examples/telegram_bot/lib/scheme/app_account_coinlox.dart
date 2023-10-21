// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class AppAccountCoinlox extends JsonScheme {
  AppAccountCoinlox(super.rawData);

  static Map get defaultData {
    return {
      "@type": "appAccountCoinlox",
      "id": 0,
      "created_at": "2023-07-28T17:32:36.407103+00:00",
      "date": 1690565556042,
      "meesagee_user_id": 0,
      "balance": 0
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

  int? get balance {
    try {
      if (rawData["balance"] is int == false) {
        return null;
      }
      return rawData["balance"] as int;
    } catch (e) {
      return null;
    }
  }

  static AppAccountCoinlox create({
    String special_type = "appAccountCoinlox",
    int? id,
    String? created_at,
    int? date,
    int? meesagee_user_id,
    int? balance,
  }) {
    // AppAccountCoinlox appAccountCoinlox = AppAccountCoinlox({
    Map appAccountCoinlox_data_create_json = {
      "@type": special_type,
      "id": id,
      "created_at": created_at,
      "date": date,
      "meesagee_user_id": meesagee_user_id,
      "balance": balance,
    };

    appAccountCoinlox_data_create_json
        .removeWhere((key, value) => value == null);
    AppAccountCoinlox appAccountCoinlox_data_create =
        AppAccountCoinlox(appAccountCoinlox_data_create_json);

    return appAccountCoinlox_data_create;
  }
}
