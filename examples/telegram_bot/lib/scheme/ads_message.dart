// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "msg.dart";

class AdsMessage extends JsonScheme {
  AdsMessage(super.rawData);

  static Map get defaultData {
    return {
      "@type": "AdsMessage",
      "chat_id": 0,
      "user_id": 1,
      "expire_date": 0,
      "is_send": false,
      "is_notif": false,
      "is_auto_delete": false,
      "msg": {
        "@type": "msg",
        "date": 1672233175,
        "can_reply_to_message_id": false,
        "can_disable_web_page_preview": false,
        "can_allow_sending_without_reply": true,
        "can_deep_link": false,
        "can_response_callback_data": false,
        "can_send_chat_action": false,
        "acces_msg": "all",
        "request_api": "sendMessage",
        "type": "text",
        "text": "halo",
        "file_unique_id": "97p0cdz1ihmbr1x",
        "from_user_id": 5604530106,
        "from_platform": "telegram"
      }
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

  bool? get is_send {
    try {
      if (rawData["is_send"] is bool == false) {
        return null;
      }
      return rawData["is_send"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_notif {
    try {
      if (rawData["is_notif"] is bool == false) {
        return null;
      }
      return rawData["is_notif"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_auto_delete {
    try {
      if (rawData["is_auto_delete"] is bool == false) {
        return null;
      }
      return rawData["is_auto_delete"] as bool;
    } catch (e) {
      return null;
    }
  }

  Msg get msg {
    try {
      if (rawData["msg"] is Map == false) {
        return Msg({});
      }
      return Msg(rawData["msg"] as Map);
    } catch (e) {
      return Msg({});
    }
  }

  static AdsMessage create({
    String special_type = "AdsMessage",
    int? chat_id,
    int? user_id,
    int? expire_date,
    bool? is_send,
    bool? is_notif,
    bool? is_auto_delete,
    Msg? msg,
  }) {
    // AdsMessage adsMessage = AdsMessage({
    Map adsMessage_data_create_json = {
      "@type": special_type,
      "chat_id": chat_id,
      "user_id": user_id,
      "expire_date": expire_date,
      "is_send": is_send,
      "is_notif": is_notif,
      "is_auto_delete": is_auto_delete,
      "msg": (msg != null) ? msg.toJson() : null,
    };

    adsMessage_data_create_json.removeWhere((key, value) => value == null);
    AdsMessage adsMessage_data_create = AdsMessage(adsMessage_data_create_json);

    return adsMessage_data_create;
  }
}
