// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ChatbotPrompt extends JsonScheme {
  ChatbotPrompt(super.rawData);

  static Map get defaultData {
    return {
      "@type": "chatbotPrompt",
      "prompt": "",
      "respond_id": "",
      "prompt_id": "",
      "from_meesagee_user_id": 0,
      "date": 0,
      "total_count": 0,
      "from_user_id": 0,
      "update_date": 0,
      "language_code_id": ""
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

  String? get prompt {
    try {
      if (rawData["prompt"] is String == false) {
        return null;
      }
      return rawData["prompt"] as String;
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

  int? get from_user_id {
    try {
      if (rawData["from_user_id"] is int == false) {
        return null;
      }
      return rawData["from_user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get update_date {
    try {
      if (rawData["update_date"] is int == false) {
        return null;
      }
      return rawData["update_date"] as int;
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

  static ChatbotPrompt create({
    String special_type = "chatbotPrompt",
    String? prompt,
    String? respond_id,
    String? prompt_id,
    int? from_meesagee_user_id,
    int? date,
    int? total_count,
    int? from_user_id,
    int? update_date,
    String? language_code_id,
  }) {
    // ChatbotPrompt chatbotPrompt = ChatbotPrompt({
    Map chatbotPrompt_data_create_json = {
      "@type": special_type,
      "prompt": prompt,
      "respond_id": respond_id,
      "prompt_id": prompt_id,
      "from_meesagee_user_id": from_meesagee_user_id,
      "date": date,
      "total_count": total_count,
      "from_user_id": from_user_id,
      "update_date": update_date,
      "language_code_id": language_code_id,
    };

    chatbotPrompt_data_create_json.removeWhere((key, value) => value == null);
    ChatbotPrompt chatbotPrompt_data_create =
        ChatbotPrompt(chatbotPrompt_data_create_json);

    return chatbotPrompt_data_create;
  }
}
