// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class WaClientData extends JsonScheme {
  WaClientData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "waClientData",
      "client_token": "",
      "client_user_id": "0",
      "tg_owner_user_id": 0,
      "expire_date": 0,
      "created_at": "2022-12-26T05:26:40.500935+00:00",
      "owner_user_id": "0",
      "client_type": "",
      "from_bot_type": null,
      "can_join_groups": false,
      "can_read_all_group_messages": false,
      "from_tg_bot_user_id": 0,
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

  String? get client_user_id {
    try {
      if (rawData["client_user_id"] is String == false) {
        return null;
      }
      return rawData["client_user_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get tg_owner_user_id {
    try {
      if (rawData["tg_owner_user_id"] is int == false) {
        return null;
      }
      return rawData["tg_owner_user_id"] as int;
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

  String? get owner_user_id {
    try {
      if (rawData["owner_user_id"] is String == false) {
        return null;
      }
      return rawData["owner_user_id"] as String;
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

  int? get from_tg_bot_user_id {
    try {
      if (rawData["from_tg_bot_user_id"] is int == false) {
        return null;
      }
      return rawData["from_tg_bot_user_id"] as int;
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

  static WaClientData create({
    String special_type = "waClientData",
    String? client_token,
    String? client_user_id,
    int? tg_owner_user_id,
    int? expire_date,
    String? created_at,
    String? owner_user_id,
    String? client_type,
    Object? from_bot_type,
    bool? can_join_groups,
    bool? can_read_all_group_messages,
    int? from_tg_bot_user_id,
    String? client_username,
    String? version,
  }) {
    // WaClientData waClientData = WaClientData({
    Map waClientData_data_create_json = {
      "@type": special_type,
      "client_token": client_token,
      "client_user_id": client_user_id,
      "tg_owner_user_id": tg_owner_user_id,
      "expire_date": expire_date,
      "created_at": created_at,
      "owner_user_id": owner_user_id,
      "client_type": client_type,
      "from_bot_type": from_bot_type,
      "can_join_groups": can_join_groups,
      "can_read_all_group_messages": can_read_all_group_messages,
      "from_tg_bot_user_id": from_tg_bot_user_id,
      "client_username": client_username,
      "version": version,
    };

    waClientData_data_create_json.removeWhere((key, value) => value == null);
    WaClientData waClientData_data_create =
        WaClientData(waClientData_data_create_json);

    return waClientData_data_create;
  }
}
