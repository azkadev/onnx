// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Log extends JsonScheme {
  Log(super.rawData);

  static Map get defaultData {
    return {
      "@type": "log",
      "command_start_chat_id": 0,
      "command_start_chat_id_blacklist_user": 0,
      "is_log_msg_text_chat_id": false,
      "is_log_action_chat_id": false,
      "log_action_chat_id": 0,
      "msg_text_chat_id": 0,
      "is_bot_api": true,
      "reclone_bot_chat_id": 0,
      "token_bot": ""
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

  int? get command_start_chat_id {
    try {
      if (rawData["command_start_chat_id"] is int == false) {
        return null;
      }
      return rawData["command_start_chat_id"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get command_start_chat_id_blacklist_user {
    try {
      if (rawData["command_start_chat_id_blacklist_user"] is int == false) {
        return null;
      }
      return rawData["command_start_chat_id_blacklist_user"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get is_log_msg_text_chat_id {
    try {
      if (rawData["is_log_msg_text_chat_id"] is bool == false) {
        return null;
      }
      return rawData["is_log_msg_text_chat_id"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_log_action_chat_id {
    try {
      if (rawData["is_log_action_chat_id"] is bool == false) {
        return null;
      }
      return rawData["is_log_action_chat_id"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get log_action_chat_id {
    try {
      if (rawData["log_action_chat_id"] is int == false) {
        return null;
      }
      return rawData["log_action_chat_id"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get msg_text_chat_id {
    try {
      if (rawData["msg_text_chat_id"] is int == false) {
        return null;
      }
      return rawData["msg_text_chat_id"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get is_bot_api {
    try {
      if (rawData["is_bot_api"] is bool == false) {
        return null;
      }
      return rawData["is_bot_api"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get reclone_bot_chat_id {
    try {
      if (rawData["reclone_bot_chat_id"] is int == false) {
        return null;
      }
      return rawData["reclone_bot_chat_id"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get token_bot {
    try {
      if (rawData["token_bot"] is String == false) {
        return null;
      }
      return rawData["token_bot"] as String;
    } catch (e) {
      return null;
    }
  }

  static Log create({
    String special_type = "log",
    int? command_start_chat_id,
    int? command_start_chat_id_blacklist_user,
    bool? is_log_msg_text_chat_id,
    bool? is_log_action_chat_id,
    int? log_action_chat_id,
    int? msg_text_chat_id,
    bool? is_bot_api,
    int? reclone_bot_chat_id,
    String? token_bot,
  }) {
    // Log log = Log({
    Map log_data_create_json = {
      "@type": special_type,
      "command_start_chat_id": command_start_chat_id,
      "command_start_chat_id_blacklist_user":
          command_start_chat_id_blacklist_user,
      "is_log_msg_text_chat_id": is_log_msg_text_chat_id,
      "is_log_action_chat_id": is_log_action_chat_id,
      "log_action_chat_id": log_action_chat_id,
      "msg_text_chat_id": msg_text_chat_id,
      "is_bot_api": is_bot_api,
      "reclone_bot_chat_id": reclone_bot_chat_id,
      "token_bot": token_bot,
    };

    log_data_create_json.removeWhere((key, value) => value == null);
    Log log_data_create = Log(log_data_create_json);

    return log_data_create;
  }
}
