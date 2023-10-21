// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class AppAccountMeesagee extends JsonScheme {
  AppAccountMeesagee(super.rawData);

  static Map get defaultData {
    return {
      "@type": "appAccountMeesagee",
      "id": 0,
      "username": "",
      "created_at": "2023-07-28T17:32:36.407103+00:00",
      "password": "F kosap",
      "date": 1690565556042,
      "is_verified": true,
      "expire_date_verified": 0,
      "first_name": "Azka",
      "last_name": "Artificial Intelligence",
      "is_bot": false,
      "is_support": false,
      "secret_data": null,
      "telegram_user_id": 0,
      "phone_number": 0,
      "owner_user_id": 0
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

  String? get password {
    try {
      if (rawData["password"] is String == false) {
        return null;
      }
      return rawData["password"] as String;
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

  bool? get is_verified {
    try {
      if (rawData["is_verified"] is bool == false) {
        return null;
      }
      return rawData["is_verified"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get expire_date_verified {
    try {
      if (rawData["expire_date_verified"] is int == false) {
        return null;
      }
      return rawData["expire_date_verified"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get first_name {
    try {
      if (rawData["first_name"] is String == false) {
        return null;
      }
      return rawData["first_name"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get last_name {
    try {
      if (rawData["last_name"] is String == false) {
        return null;
      }
      return rawData["last_name"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get is_bot {
    try {
      if (rawData["is_bot"] is bool == false) {
        return null;
      }
      return rawData["is_bot"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_support {
    try {
      if (rawData["is_support"] is bool == false) {
        return null;
      }
      return rawData["is_support"] as bool;
    } catch (e) {
      return null;
    }
  }

  Object? get secret_data {
    try {
      if (rawData["secret_data"] is Object == false) {
        return null;
      }
      return rawData["secret_data"] as Object;
    } catch (e) {
      return null;
    }
  }

  int? get telegram_user_id {
    try {
      if (rawData["telegram_user_id"] is int == false) {
        return null;
      }
      return rawData["telegram_user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get phone_number {
    try {
      if (rawData["phone_number"] is int == false) {
        return null;
      }
      return rawData["phone_number"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get owner_user_id {
    try {
      if (rawData["owner_user_id"] is int == false) {
        return null;
      }
      return rawData["owner_user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  static AppAccountMeesagee create({
    String special_type = "appAccountMeesagee",
    int? id,
    String? username,
    String? created_at,
    String? password,
    int? date,
    bool? is_verified,
    int? expire_date_verified,
    String? first_name,
    String? last_name,
    bool? is_bot,
    bool? is_support,
    Object? secret_data,
    int? telegram_user_id,
    int? phone_number,
    int? owner_user_id,
  }) {
    // AppAccountMeesagee appAccountMeesagee = AppAccountMeesagee({
    Map appAccountMeesagee_data_create_json = {
      "@type": special_type,
      "id": id,
      "username": username,
      "created_at": created_at,
      "password": password,
      "date": date,
      "is_verified": is_verified,
      "expire_date_verified": expire_date_verified,
      "first_name": first_name,
      "last_name": last_name,
      "is_bot": is_bot,
      "is_support": is_support,
      "secret_data": secret_data,
      "telegram_user_id": telegram_user_id,
      "phone_number": phone_number,
      "owner_user_id": owner_user_id,
    };

    appAccountMeesagee_data_create_json
        .removeWhere((key, value) => value == null);
    AppAccountMeesagee appAccountMeesagee_data_create =
        AppAccountMeesagee(appAccountMeesagee_data_create_json);

    return appAccountMeesagee_data_create;
  }
}
