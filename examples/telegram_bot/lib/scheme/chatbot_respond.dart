// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "chat_respond.dart";

class ChatbotRespond extends JsonScheme {
  ChatbotRespond(super.rawData);

  static Map get defaultData {
    return {
      "@type": "chatbotRespond",
      "prompt_id": "",
      "respond_id": "",
      "from_meesagee_user_id": 0,
      "date": 0,
      "total_count": 0,
      "update_data": 0,
      "language_code_id": "",
      "like": 0,
      "dislike": 0,
      "respond": {
        "@type": "chatRespond",
        "text": "Hei {from_mention}",
        "caption": "Hei {from_mention}",
        "type": "text",
        "photo": "sas",
        "video": "",
        "voice": "",
        "media_tags": [
          ["#nsfw", "#"]
        ],
        "method": "sendMessage",
        "parse_mode": "html"
      },
      "unique_id": ""
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

  String? get prompt_id {
    try {
      if (rawData["prompt_id"] is String == false) {
        return null;
      }
      return rawData["prompt_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get respond_id {
    try {
      if (rawData["respond_id"] is String == false) {
        return null;
      }
      return rawData["respond_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get from_meesagee_user_id {
    try {
      if (rawData["from_meesagee_user_id"] is int == false) {
        return null;
      }
      return rawData["from_meesagee_user_id"] as int;
    } catch (e) {
      return null;
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

  int? get total_count {
    try {
      if (rawData["total_count"] is int == false) {
        return null;
      }
      return rawData["total_count"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get update_data {
    try {
      if (rawData["update_data"] is int == false) {
        return null;
      }
      return rawData["update_data"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get language_code_id {
    try {
      if (rawData["language_code_id"] is String == false) {
        return null;
      }
      return rawData["language_code_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get like {
    try {
      if (rawData["like"] is int == false) {
        return null;
      }
      return rawData["like"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get dislike {
    try {
      if (rawData["dislike"] is int == false) {
        return null;
      }
      return rawData["dislike"] as int;
    } catch (e) {
      return null;
    }
  }

  ChatRespond get respond {
    try {
      if (rawData["respond"] is Map == false) {
        return ChatRespond({});
      }
      return ChatRespond(rawData["respond"] as Map);
    } catch (e) {
      return ChatRespond({});
    }
  }

  String? get unique_id {
    try {
      if (rawData["unique_id"] is String == false) {
        return null;
      }
      return rawData["unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  static ChatbotRespond create({
    String special_type = "chatbotRespond",
    String? prompt_id,
    String? respond_id,
    int? from_meesagee_user_id,
    int? date,
    int? total_count,
    int? update_data,
    String? language_code_id,
    int? like,
    int? dislike,
    ChatRespond? respond,
    String? unique_id,
  }) {
    // ChatbotRespond chatbotRespond = ChatbotRespond({
    Map chatbotRespond_data_create_json = {
      "@type": special_type,
      "prompt_id": prompt_id,
      "respond_id": respond_id,
      "from_meesagee_user_id": from_meesagee_user_id,
      "date": date,
      "total_count": total_count,
      "update_data": update_data,
      "language_code_id": language_code_id,
      "like": like,
      "dislike": dislike,
      "respond": (respond != null) ? respond.toJson() : null,
      "unique_id": unique_id,
    };

    chatbotRespond_data_create_json.removeWhere((key, value) => value == null);
    ChatbotRespond chatbotRespond_data_create =
        ChatbotRespond(chatbotRespond_data_create_json);

    return chatbotRespond_data_create;
  }
}
