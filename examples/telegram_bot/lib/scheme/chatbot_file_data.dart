// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ChatbotFileData extends JsonScheme {
  ChatbotFileData(super.rawData);

  static Map get defaultData {
    return {"@type": "chatbotFileData"};
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

  static ChatbotFileData create({
    String special_type = "chatbotFileData",
  }) {
    // ChatbotFileData chatbotFileData = ChatbotFileData({
    Map chatbotFileData_data_create_json = {
      "@type": special_type,
    };

    chatbotFileData_data_create_json.removeWhere((key, value) => value == null);
    ChatbotFileData chatbotFileData_data_create =
        ChatbotFileData(chatbotFileData_data_create_json);

    return chatbotFileData_data_create;
  }
}
