// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class User extends JsonScheme {
  User(super.rawData);

  static Map get defaultData {
    return {
      "@type": "user",
      "id": 5604530106,
      "is_bot": false,
      "first_name": "Kazekage",
      "username": "sadssfsmfm",
      "language_code": "en"
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

  String? get language_code {
    try {
      if (rawData["language_code"] is String == false) {
        return null;
      }
      return rawData["language_code"] as String;
    } catch (e) {
      return null;
    }
  }

  static User create({
    String special_type = "user",
    int? id,
    bool? is_bot,
    String? first_name,
    String? username,
    String? language_code,
  }) {
    // User user = User({
    Map user_data_create_json = {
      "@type": special_type,
      "id": id,
      "is_bot": is_bot,
      "first_name": first_name,
      "username": username,
      "language_code": language_code,
    };

    user_data_create_json.removeWhere((key, value) => value == null);
    User user_data_create = User(user_data_create_json);

    return user_data_create;
  }
}
