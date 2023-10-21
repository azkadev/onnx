// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class RepeatMsgChats extends JsonScheme {
  RepeatMsgChats(super.rawData);

  static Map get defaultData {
    return {
      "chat_id": -100231301,
      "msg_count": 10,
      "@type": "repeat_msg_chats"
    };
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

  int? get msg_count {
    try {
      if (rawData["msg_count"] is int == false) {
        return null;
      }
      return rawData["msg_count"] as int;
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

  static RepeatMsgChats create({
    int? chat_id,
    int? msg_count,
    String special_type = "repeat_msg_chats",
  }) {
    // RepeatMsgChats repeatMsgChats = RepeatMsgChats({
    Map repeatMsgChats_data_create_json = {
      "chat_id": chat_id,
      "msg_count": msg_count,
      "@type": special_type,
    };

    repeatMsgChats_data_create_json.removeWhere((key, value) => value == null);
    RepeatMsgChats repeatMsgChats_data_create =
        RepeatMsgChats(repeatMsgChats_data_create_json);

    return repeatMsgChats_data_create;
  }
}
