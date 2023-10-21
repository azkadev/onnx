// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "respond.dart";

class NoteMsgs extends JsonScheme {
  NoteMsgs(super.rawData);

  static Map get defaultData {
    return {
      "message": "hai",
      "respond": {
        "@type": "respond",
        "date": 1672232959,
        "can_reply_to_message_id": false,
        "can_disable_web_page_preview": false,
        "can_allow_sending_without_reply": true,
        "can_deep_link": false,
        "can_response_callback_data": false,
        "can_send_chat_action": false,
        "acces_msg": "all",
        "request_api": "sendMessage",
        "type": "text",
        "text": "/addchatbot hai",
        "file_unique_id": "4tca8lsn78k1d27",
        "from_user_id": 5604530106,
        "from_platform": "telegram"
      },
      "@type": "note_msgs"
    };
  }

  String? get message {
    try {
      if (rawData["message"] is String == false) {
        return null;
      }
      return rawData["message"] as String;
    } catch (e) {
      return null;
    }
  }

  Respond get respond {
    try {
      if (rawData["respond"] is Map == false) {
        return Respond({});
      }
      return Respond(rawData["respond"] as Map);
    } catch (e) {
      return Respond({});
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

  static NoteMsgs create({
    String? message,
    Respond? respond,
    String special_type = "note_msgs",
  }) {
    // NoteMsgs noteMsgs = NoteMsgs({
    Map noteMsgs_data_create_json = {
      "message": message,
      "respond": (respond != null) ? respond.toJson() : null,
      "@type": special_type,
    };

    noteMsgs_data_create_json.removeWhere((key, value) => value == null);
    NoteMsgs noteMsgs_data_create = NoteMsgs(noteMsgs_data_create_json);

    return noteMsgs_data_create;
  }
}
