// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "msg_respond.dart";
import "msg_respond_keyboard.dart";
import "msg_keyboard.dart";
import "must_have_content_msg_respond.dart";
import "must_have_content_msg_keyboard.dart";

class AutoForwards extends JsonScheme {
  AutoForwards(super.rawData);

  static Map get defaultData {
    return {
      "id": 0,
      "title": "asaskak",
      "username": "masmkamskamksmak",
      "type": "supergroup",
      "invite_link": "https://t.me/+0Aw90MEh2VA5MzI1",
      "join_to_send_messages": true,
      "message_auto_delete_time": 86400,
      "has_protected_content": true,
      "token_bot": "",
      "is_force_subscribe": false,
      "is_forward": false,
      "is_on": false,
      "is_require_premium": false,
      "slow_mode": "",
      "forward_type_content": ["text"],
      "trigger": "",
      "ignore_trigger": "",
      "msg_min_length": 0,
      "msg_max_length": 4096,
      "is_clear_hastagh": false,
      "is_msg_respond": false,
      "msg_respond": {
        "@type": "msg_respond",
        "date": 1688753865,
        "can_reply_to_message_id": false,
        "can_disable_web_page_preview": false,
        "can_allow_sending_without_reply": true,
        "can_deep_link": false,
        "can_response_callback_data": false,
        "can_send_chat_action": false,
        "acces_msg": "all",
        "request_api": "sendMessage",
        "type": "text",
        "text": "Hai {from_mention}, Pesan anda berhasil kami post",
        "file_unique_id": "mhl6aUwu1rzmFxM",
        "from_user_id": 5692078209,
        "from_platform": "telegram",
        "method": "sendMessage"
      },
      "msg_respond_keyboard": {
        "@type": "msg_respond_keyboard",
        "inline_keyboard": [
          [
            {"text": "POST", "url": "{msg_post_link}"}
          ]
        ]
      },
      "msg_keyboard": {
        "@type": "msgKeyboard",
        "inline_keyboard": [
          [
            {
              "@type": "inlineKeyboard",
              "text": "",
              "url": "",
              "callback_data": ""
            }
          ]
        ]
      },
      "is_must_have_content_msg": false,
      "is_must_have_content_msg_respond": false,
      "must_have_content_msg_respond": {
        "@type": "must_have_content_msg_respond",
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
        "text":
            "{from_mention},\n\nMaaf pesan anda saya hapus\nkarena tidak mengandung kata / caption wajib / keluar context dari {chat_title}",
        "file_unique_id": "97p0cdz1ihmbr1x",
        "from_user_id": 5604530106,
        "from_platform": "telegram"
      },
      "must_have_content_msg_keyboard": {
        "@type": "must_have_content_msg_keyboard",
        "remove_keyboard": false
      },
      "must_have_content_msg": [
        ["dd", "sds"],
        ["dsd", "ds"]
      ],
      "@type": "auto_forwards",
      "is_log": false,
      "is_antispam": false
    };
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

  String? get title {
    try {
      if (rawData["title"] is String == false) {
        return null;
      }
      return rawData["title"] as String;
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

  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get invite_link {
    try {
      if (rawData["invite_link"] is String == false) {
        return null;
      }
      return rawData["invite_link"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get join_to_send_messages {
    try {
      if (rawData["join_to_send_messages"] is bool == false) {
        return null;
      }
      return rawData["join_to_send_messages"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get message_auto_delete_time {
    try {
      if (rawData["message_auto_delete_time"] is int == false) {
        return null;
      }
      return rawData["message_auto_delete_time"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get has_protected_content {
    try {
      if (rawData["has_protected_content"] is bool == false) {
        return null;
      }
      return rawData["has_protected_content"] as bool;
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

  bool? get is_force_subscribe {
    try {
      if (rawData["is_force_subscribe"] is bool == false) {
        return null;
      }
      return rawData["is_force_subscribe"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_forward {
    try {
      if (rawData["is_forward"] is bool == false) {
        return null;
      }
      return rawData["is_forward"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_on {
    try {
      if (rawData["is_on"] is bool == false) {
        return null;
      }
      return rawData["is_on"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_require_premium {
    try {
      if (rawData["is_require_premium"] is bool == false) {
        return null;
      }
      return rawData["is_require_premium"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get slow_mode {
    try {
      if (rawData["slow_mode"] is String == false) {
        return null;
      }
      return rawData["slow_mode"] as String;
    } catch (e) {
      return null;
    }
  }

  List<String> get forward_type_content {
    try {
      if (rawData["forward_type_content"] is List == false) {
        return [];
      }
      return (rawData["forward_type_content"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  String? get trigger {
    try {
      if (rawData["trigger"] is String == false) {
        return null;
      }
      return rawData["trigger"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ignore_trigger {
    try {
      if (rawData["ignore_trigger"] is String == false) {
        return null;
      }
      return rawData["ignore_trigger"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get msg_min_length {
    try {
      if (rawData["msg_min_length"] is int == false) {
        return null;
      }
      return rawData["msg_min_length"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get msg_max_length {
    try {
      if (rawData["msg_max_length"] is int == false) {
        return null;
      }
      return rawData["msg_max_length"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get is_clear_hastagh {
    try {
      if (rawData["is_clear_hastagh"] is bool == false) {
        return null;
      }
      return rawData["is_clear_hastagh"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_msg_respond {
    try {
      if (rawData["is_msg_respond"] is bool == false) {
        return null;
      }
      return rawData["is_msg_respond"] as bool;
    } catch (e) {
      return null;
    }
  }

  MsgRespond get msg_respond {
    try {
      if (rawData["msg_respond"] is Map == false) {
        return MsgRespond({});
      }
      return MsgRespond(rawData["msg_respond"] as Map);
    } catch (e) {
      return MsgRespond({});
    }
  }

  MsgRespondKeyboard get msg_respond_keyboard {
    try {
      if (rawData["msg_respond_keyboard"] is Map == false) {
        return MsgRespondKeyboard({});
      }
      return MsgRespondKeyboard(rawData["msg_respond_keyboard"] as Map);
    } catch (e) {
      return MsgRespondKeyboard({});
    }
  }

  MsgKeyboard get msg_keyboard {
    try {
      if (rawData["msg_keyboard"] is Map == false) {
        return MsgKeyboard({});
      }
      return MsgKeyboard(rawData["msg_keyboard"] as Map);
    } catch (e) {
      return MsgKeyboard({});
    }
  }

  bool? get is_must_have_content_msg {
    try {
      if (rawData["is_must_have_content_msg"] is bool == false) {
        return null;
      }
      return rawData["is_must_have_content_msg"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_must_have_content_msg_respond {
    try {
      if (rawData["is_must_have_content_msg_respond"] is bool == false) {
        return null;
      }
      return rawData["is_must_have_content_msg_respond"] as bool;
    } catch (e) {
      return null;
    }
  }

  MustHaveContentMsgRespond get must_have_content_msg_respond {
    try {
      if (rawData["must_have_content_msg_respond"] is Map == false) {
        return MustHaveContentMsgRespond({});
      }
      return MustHaveContentMsgRespond(
          rawData["must_have_content_msg_respond"] as Map);
    } catch (e) {
      return MustHaveContentMsgRespond({});
    }
  }

  MustHaveContentMsgKeyboard get must_have_content_msg_keyboard {
    try {
      if (rawData["must_have_content_msg_keyboard"] is Map == false) {
        return MustHaveContentMsgKeyboard({});
      }
      return MustHaveContentMsgKeyboard(
          rawData["must_have_content_msg_keyboard"] as Map);
    } catch (e) {
      return MustHaveContentMsgKeyboard({});
    }
  }

  List<List<String>> get must_have_content_msg {
    try {
      if (rawData["must_have_content_msg"] is List == false) {
        return [];
      }
      return (rawData["must_have_content_msg"] as List).cast<List<String>>();
    } catch (e) {
      return [];
    }
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

  bool? get is_log {
    try {
      if (rawData["is_log"] is bool == false) {
        return null;
      }
      return rawData["is_log"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_antispam {
    try {
      if (rawData["is_antispam"] is bool == false) {
        return null;
      }
      return rawData["is_antispam"] as bool;
    } catch (e) {
      return null;
    }
  }

  static AutoForwards create({
    int? id,
    String? title,
    String? username,
    String? type,
    String? invite_link,
    bool? join_to_send_messages,
    int? message_auto_delete_time,
    bool? has_protected_content,
    String? token_bot,
    bool? is_force_subscribe,
    bool? is_forward,
    bool? is_on,
    bool? is_require_premium,
    String? slow_mode,
    List<String>? forward_type_content,
    String? trigger,
    String? ignore_trigger,
    int? msg_min_length,
    int? msg_max_length,
    bool? is_clear_hastagh,
    bool? is_msg_respond,
    MsgRespond? msg_respond,
    MsgRespondKeyboard? msg_respond_keyboard,
    MsgKeyboard? msg_keyboard,
    bool? is_must_have_content_msg,
    bool? is_must_have_content_msg_respond,
    MustHaveContentMsgRespond? must_have_content_msg_respond,
    MustHaveContentMsgKeyboard? must_have_content_msg_keyboard,
    List<List<String>>? must_have_content_msg,
    String special_type = "auto_forwards",
    bool? is_log,
    bool? is_antispam,
  }) {
    // AutoForwards autoForwards = AutoForwards({
    Map autoForwards_data_create_json = {
      "id": id,
      "title": title,
      "username": username,
      "type": type,
      "invite_link": invite_link,
      "join_to_send_messages": join_to_send_messages,
      "message_auto_delete_time": message_auto_delete_time,
      "has_protected_content": has_protected_content,
      "token_bot": token_bot,
      "is_force_subscribe": is_force_subscribe,
      "is_forward": is_forward,
      "is_on": is_on,
      "is_require_premium": is_require_premium,
      "slow_mode": slow_mode,
      "forward_type_content": forward_type_content,
      "trigger": trigger,
      "ignore_trigger": ignore_trigger,
      "msg_min_length": msg_min_length,
      "msg_max_length": msg_max_length,
      "is_clear_hastagh": is_clear_hastagh,
      "is_msg_respond": is_msg_respond,
      "msg_respond": (msg_respond != null) ? msg_respond.toJson() : null,
      "msg_respond_keyboard":
          (msg_respond_keyboard != null) ? msg_respond_keyboard.toJson() : null,
      "msg_keyboard": (msg_keyboard != null) ? msg_keyboard.toJson() : null,
      "is_must_have_content_msg": is_must_have_content_msg,
      "is_must_have_content_msg_respond": is_must_have_content_msg_respond,
      "must_have_content_msg_respond": (must_have_content_msg_respond != null)
          ? must_have_content_msg_respond.toJson()
          : null,
      "must_have_content_msg_keyboard": (must_have_content_msg_keyboard != null)
          ? must_have_content_msg_keyboard.toJson()
          : null,
      "must_have_content_msg": must_have_content_msg,
      "@type": special_type,
      "is_log": is_log,
      "is_antispam": is_antispam,
    };

    autoForwards_data_create_json.removeWhere((key, value) => value == null);
    AutoForwards autoForwards_data_create =
        AutoForwards(autoForwards_data_create_json);

    return autoForwards_data_create;
  }
}
