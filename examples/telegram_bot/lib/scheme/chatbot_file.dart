// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "chatbot_file_data.dart";

class ChatbotFile extends JsonScheme {
  ChatbotFile(super.rawData);

  static Map get defaultData {
    return {
      "@type": "chatbotFile",
      "file_id": "",
      "data": {"@type": "chatbotFileData"}
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

  String? get file_id {
    try {
      if (rawData["file_id"] is String == false) {
        return null;
      }
      return rawData["file_id"] as String;
    } catch (e) {
      return null;
    }
  }

  ChatbotFileData get data {
    try {
      if (rawData["data"] is Map == false) {
        return ChatbotFileData({});
      }
      return ChatbotFileData(rawData["data"] as Map);
    } catch (e) {
      return ChatbotFileData({});
    }
  }

  static ChatbotFile create({
    String special_type = "chatbotFile",
    String? file_id,
    ChatbotFileData? data,
  }) {
    // ChatbotFile chatbotFile = ChatbotFile({
    Map chatbotFile_data_create_json = {
      "@type": special_type,
      "file_id": file_id,
      "data": (data != null) ? data.toJson() : null,
    };

    chatbotFile_data_create_json.removeWhere((key, value) => value == null);
    ChatbotFile chatbotFile_data_create =
        ChatbotFile(chatbotFile_data_create_json);

    return chatbotFile_data_create;
  }
}
