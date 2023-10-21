// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class SenderChat extends JsonScheme {
  SenderChat(super.rawData);

  static Map get defaultData {
    return {
      "@type": "sender_chat",
      "empty": "",
      "not_empty": "",
      "whitelist_chat_ids": [],
      "blacklist_chat_ids": [],
      "restrict": ""
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

  String? get empty {
    try {
      if (rawData["empty"] is String == false) {
        return null;
      }
      return rawData["empty"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get not_empty {
    try {
      if (rawData["not_empty"] is String == false) {
        return null;
      }
      return rawData["not_empty"] as String;
    } catch (e) {
      return null;
    }
  }

  List<Object> get whitelist_chat_ids {
    try {
      if (rawData["whitelist_chat_ids"] is List == false) {
        return [];
      }
      return (rawData["whitelist_chat_ids"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  List<Object> get blacklist_chat_ids {
    try {
      if (rawData["blacklist_chat_ids"] is List == false) {
        return [];
      }
      return (rawData["blacklist_chat_ids"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  String? get restrict {
    try {
      if (rawData["restrict"] is String == false) {
        return null;
      }
      return rawData["restrict"] as String;
    } catch (e) {
      return null;
    }
  }

  static SenderChat create({
    String special_type = "sender_chat",
    String? empty,
    String? not_empty,
    List<Object>? whitelist_chat_ids,
    List<Object>? blacklist_chat_ids,
    String? restrict,
  }) {
    // SenderChat senderChat = SenderChat({
    Map senderChat_data_create_json = {
      "@type": special_type,
      "empty": empty,
      "not_empty": not_empty,
      "whitelist_chat_ids": whitelist_chat_ids,
      "blacklist_chat_ids": blacklist_chat_ids,
      "restrict": restrict,
    };

    senderChat_data_create_json.removeWhere((key, value) => value == null);
    SenderChat senderChat_data_create = SenderChat(senderChat_data_create_json);

    return senderChat_data_create;
  }
}
