// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ChatTypeDataInvite extends JsonScheme {
  ChatTypeDataInvite(super.rawData);

  static Map get defaultData {
    return {
      "@type": "ChatTypeDataInvite",
      "type": "link",
      "data": "https://t.me/+QDFVI6FTEpWkMTM1",
      "chat_id": 0
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

  String? get data {
    try {
      if (rawData["data"] is String == false) {
        return null;
      }
      return rawData["data"] as String;
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

  static ChatTypeDataInvite create({
    String special_type = "ChatTypeDataInvite",
    String? type,
    String? data,
    int? chat_id,
  }) {
    // ChatTypeDataInvite chatTypeDataInvite = ChatTypeDataInvite({
    Map chatTypeDataInvite_data_create_json = {
      "@type": special_type,
      "type": type,
      "data": data,
      "chat_id": chat_id,
    };

    chatTypeDataInvite_data_create_json
        .removeWhere((key, value) => value == null);
    ChatTypeDataInvite chatTypeDataInvite_data_create =
        ChatTypeDataInvite(chatTypeDataInvite_data_create_json);

    return chatTypeDataInvite_data_create;
  }
}
