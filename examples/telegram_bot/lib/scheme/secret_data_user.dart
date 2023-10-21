// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "secret_data_location.dart";
import "secret_data_user.dart";

class SecretDataUser extends JsonScheme {
  SecretDataUser(super.rawData);

  static Map get defaultData {
    return {
      "@type": "SecretDataUser",
      "user_id": 0,
      "phone_number": "",
      "location": {
        "@type": "SecretDataLocation",
        "latitude": -7.452444,
        "longitude": 109.16865
      },
      "date": 0,
      "update_date": 0,
      "historys": [
        {
          "@type": "SecretDataUser",
          "phone_number": "",
          "location": {
            "@type": "SecretDataLocation",
            "latitude": -7.452444,
            "longitude": 109.16865
          },
          "date": 0,
          "update_date": 0
        }
      ]
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

  String? get phone_number {
    try {
      if (rawData["phone_number"] is String == false) {
        return null;
      }
      return rawData["phone_number"] as String;
    } catch (e) {
      return null;
    }
  }

  SecretDataLocation get location {
    try {
      if (rawData["location"] is Map == false) {
        return SecretDataLocation({});
      }
      return SecretDataLocation(rawData["location"] as Map);
    } catch (e) {
      return SecretDataLocation({});
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

  int? get update_date {
    try {
      if (rawData["update_date"] is int == false) {
        return null;
      }
      return rawData["update_date"] as int;
    } catch (e) {
      return null;
    }
  }

  List<SecretDataUser> get historys {
    try {
      if (rawData["historys"] is List == false) {
        return [];
      }
      return (rawData["historys"] as List)
          .map((e) => SecretDataUser(e as Map))
          .toList()
          .cast<SecretDataUser>();
    } catch (e) {
      return [];
    }
  }

  static SecretDataUser create({
    String special_type = "SecretDataUser",
    int? user_id,
    String? phone_number,
    SecretDataLocation? location,
    int? date,
    int? update_date,
    List<SecretDataUser>? historys,
  }) {
    // SecretDataUser secretDataUser = SecretDataUser({
    Map secretDataUser_data_create_json = {
      "@type": special_type,
      "user_id": user_id,
      "phone_number": phone_number,
      "location": (location != null) ? location.toJson() : null,
      "date": date,
      "update_date": update_date,
      "historys": (historys != null) ? historys.toJson() : null,
    };

    secretDataUser_data_create_json.removeWhere((key, value) => value == null);
    SecretDataUser secretDataUser_data_create =
        SecretDataUser(secretDataUser_data_create_json);

    return secretDataUser_data_create;
  }
}
