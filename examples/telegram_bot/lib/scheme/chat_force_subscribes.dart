// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ChatForceSubscribes extends JsonScheme {
  ChatForceSubscribes(super.rawData);

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
      "@type": "chat_force_subscribes"
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

  static ChatForceSubscribes create({
    int? id,
    String? title,
    String? username,
    String? type,
    String? invite_link,
    bool? join_to_send_messages,
    int? message_auto_delete_time,
    bool? has_protected_content,
    String special_type = "chat_force_subscribes",
  }) {
    // ChatForceSubscribes chatForceSubscribes = ChatForceSubscribes({
    Map chatForceSubscribes_data_create_json = {
      "id": id,
      "title": title,
      "username": username,
      "type": type,
      "invite_link": invite_link,
      "join_to_send_messages": join_to_send_messages,
      "message_auto_delete_time": message_auto_delete_time,
      "has_protected_content": has_protected_content,
      "@type": special_type,
    };

    chatForceSubscribes_data_create_json
        .removeWhere((key, value) => value == null);
    ChatForceSubscribes chatForceSubscribes_data_create =
        ChatForceSubscribes(chatForceSubscribes_data_create_json);

    return chatForceSubscribes_data_create;
  }
}
