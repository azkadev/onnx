// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class TgClientData extends JsonScheme {
  TgClientData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "TgClientData",
      "id": 0,
      "created_at": "2022-12-26T05:26:40.500935+00:00",
      "client_user_id": 0,
      "client_title": "",
      "client_token": "",
      "owner_user_id": 0,
      "client_type": "",
      "from_bot_type": null,
      "can_join_groups": false,
      "can_read_all_group_messages": false,
      "from_bot_user_id": 0,
      "expire_date": 0,
      "client_username": "",
      "version": ""
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

  String? get client_title {
    try {
      if (rawData["client_title"] is String == false) {
        return null;
      }
      return rawData["client_title"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get client_token {
    try {
      if (rawData["client_token"] is String == false) {
        return null;
      }
      return rawData["client_token"] as String;
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

  String? get client_type {
    try {
      if (rawData["client_type"] is String == false) {
        return null;
      }
      return rawData["client_type"] as String;
    } catch (e) {
      return null;
    }
  }

  Object? get from_bot_type {
    try {
      if (rawData["from_bot_type"] is Object == false) {
        return null;
      }
      return rawData["from_bot_type"] as Object;
    } catch (e) {
      return null;
    }
  }

  bool? get can_join_groups {
    try {
      if (rawData["can_join_groups"] is bool == false) {
        return null;
      }
      return rawData["can_join_groups"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_read_all_group_messages {
    try {
      if (rawData["can_read_all_group_messages"] is bool == false) {
        return null;
      }
      return rawData["can_read_all_group_messages"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get from_bot_user_id {
    try {
      if (rawData["from_bot_user_id"] is int == false) {
        return null;
      }
      return rawData["from_bot_user_id"] as int;
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

  String? get client_username {
    try {
      if (rawData["client_username"] is String == false) {
        return null;
      }
      return rawData["client_username"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get version {
    try {
      if (rawData["version"] is String == false) {
        return null;
      }
      return rawData["version"] as String;
    } catch (e) {
      return null;
    }
  }

  static TgClientData create({
    String special_type = "TgClientData",
    int? id,
    String? created_at,
    int? client_user_id,
    String? client_title,
    String? client_token,
    int? owner_user_id,
    String? client_type,
    Object? from_bot_type,
    bool? can_join_groups,
    bool? can_read_all_group_messages,
    int? from_bot_user_id,
    int? expire_date,
    String? client_username,
    String? version,
  }) {
    // TgClientData tgClientData = TgClientData({
    Map tgClientData_data_create_json = {
      "@type": special_type,
      "id": id,
      "created_at": created_at,
      "client_user_id": client_user_id,
      "client_title": client_title,
      "client_token": client_token,
      "owner_user_id": owner_user_id,
      "client_type": client_type,
      "from_bot_type": from_bot_type,
      "can_join_groups": can_join_groups,
      "can_read_all_group_messages": can_read_all_group_messages,
      "from_bot_user_id": from_bot_user_id,
      "expire_date": expire_date,
      "client_username": client_username,
      "version": version,
    };

    tgClientData_data_create_json.removeWhere((key, value) => value == null);
    TgClientData tgClientData_data_create =
        TgClientData(tgClientData_data_create_json);

    return tgClientData_data_create;
  }
}
