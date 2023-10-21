// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "responds.dart";

class ChatbotData extends JsonScheme {
  ChatbotData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "ChatbotData",
      "message": "hai",
      "responds": [
        {
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

  List<Responds> get responds {
    try {
      if (rawData["responds"] is List == false) {
        return [];
      }
      return (rawData["responds"] as List)
          .map((e) => Responds(e as Map))
          .toList()
          .cast<Responds>();
    } catch (e) {
      return [];
    }
  }

  static ChatbotData create({
    String special_type = "ChatbotData",
    String? message,
    List<Responds>? responds,
  }) {
    // ChatbotData chatbotData = ChatbotData({
    Map chatbotData_data_create_json = {
      "@type": special_type,
      "message": message,
      "responds": (responds != null) ? responds.toJson() : null,
    };

    chatbotData_data_create_json.removeWhere((key, value) => value == null);
    ChatbotData chatbotData_data_create =
        ChatbotData(chatbotData_data_create_json);

    return chatbotData_data_create;
  }
}
