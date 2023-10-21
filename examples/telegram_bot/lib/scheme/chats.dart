// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Chats extends JsonScheme {
  Chats(super.rawData);

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
      "is_on": false,
      "chat_type_contents": ["log", "transaction", "restrict", "start"],
      "@type": "chats"
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

  List<String> get chat_type_contents {
    try {
      if (rawData["chat_type_contents"] is List == false) {
        return [];
      }
      return (rawData["chat_type_contents"] as List).cast<String>();
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

  static Chats create({
    int? id,
    String? title,
    String? username,
    String? type,
    String? invite_link,
    bool? join_to_send_messages,
    int? message_auto_delete_time,
    bool? has_protected_content,
    bool? is_on,
    List<String>? chat_type_contents,
    String special_type = "chats",
  }) {
    // Chats chats = Chats({
    Map chats_data_create_json = {
      "id": id,
      "title": title,
      "username": username,
      "type": type,
      "invite_link": invite_link,
      "join_to_send_messages": join_to_send_messages,
      "message_auto_delete_time": message_auto_delete_time,
      "has_protected_content": has_protected_content,
      "is_on": is_on,
      "chat_type_contents": chat_type_contents,
      "@type": special_type,
    };

    chats_data_create_json.removeWhere((key, value) => value == null);
    Chats chats_data_create = Chats(chats_data_create_json);

    return chats_data_create;
  }
}
