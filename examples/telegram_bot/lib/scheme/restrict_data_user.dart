// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class RestrictDataUser extends JsonScheme {
  RestrictDataUser(super.rawData);

  static Map get defaultData {
    return {
      "@type": "RestrictDataUser",
      "user_id": 0,
      "chat_id": 0,
      "is_restrict_secret_data_mute": false,
      "is_restrict_force_subscribe_mute": false
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

  int? get chat_id {
    try {
      if (rawData["chat_id"] is int == false) {
        return null;
      }
      return rawData["chat_id"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get is_restrict_secret_data_mute {
    try {
      if (rawData["is_restrict_secret_data_mute"] is bool == false) {
        return null;
      }
      return rawData["is_restrict_secret_data_mute"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_restrict_force_subscribe_mute {
    try {
      if (rawData["is_restrict_force_subscribe_mute"] is bool == false) {
        return null;
      }
      return rawData["is_restrict_force_subscribe_mute"] as bool;
    } catch (e) {
      return null;
    }
  }

  static RestrictDataUser create({
    String special_type = "RestrictDataUser",
    int? user_id,
    int? chat_id,
    bool? is_restrict_secret_data_mute,
    bool? is_restrict_force_subscribe_mute,
  }) {
    // RestrictDataUser restrictDataUser = RestrictDataUser({
    Map restrictDataUser_data_create_json = {
      "@type": special_type,
      "user_id": user_id,
      "chat_id": chat_id,
      "is_restrict_secret_data_mute": is_restrict_secret_data_mute,
      "is_restrict_force_subscribe_mute": is_restrict_force_subscribe_mute,
    };

    restrictDataUser_data_create_json
        .removeWhere((key, value) => value == null);
    RestrictDataUser restrictDataUser_data_create =
        RestrictDataUser(restrictDataUser_data_create_json);

    return restrictDataUser_data_create;
  }
}
