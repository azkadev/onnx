// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ChatRespond extends JsonScheme {
  ChatRespond(super.rawData);

  static Map get defaultData {
    return {
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

  String? get text {
    try {
      if (rawData["text"] is String == false) {
        return null;
      }
      return rawData["text"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get caption {
    try {
      if (rawData["caption"] is String == false) {
        return null;
      }
      return rawData["caption"] as String;
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

  String? get photo {
    try {
      if (rawData["photo"] is String == false) {
        return null;
      }
      return rawData["photo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get video {
    try {
      if (rawData["video"] is String == false) {
        return null;
      }
      return rawData["video"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get voice {
    try {
      if (rawData["voice"] is String == false) {
        return null;
      }
      return rawData["voice"] as String;
    } catch (e) {
      return null;
    }
  }

  List<List<String>> get media_tags {
    try {
      if (rawData["media_tags"] is List == false) {
        return [];
      }
      return (rawData["media_tags"] as List).cast<List<String>>();
    } catch (e) {
      return [];
    }
  }

  String? get method {
    try {
      if (rawData["method"] is String == false) {
        return null;
      }
      return rawData["method"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get parse_mode {
    try {
      if (rawData["parse_mode"] is String == false) {
        return null;
      }
      return rawData["parse_mode"] as String;
    } catch (e) {
      return null;
    }
  }

  static ChatRespond create({
    String special_type = "chatRespond",
    String? text,
    String? caption,
    String? type,
    String? photo,
    String? video,
    String? voice,
    List<List<String>>? media_tags,
    String? method,
    String? parse_mode,
  }) {
    // ChatRespond chatRespond = ChatRespond({
    Map chatRespond_data_create_json = {
      "@type": special_type,
      "text": text,
      "caption": caption,
      "type": type,
      "photo": photo,
      "video": video,
      "voice": voice,
      "media_tags": media_tags,
      "method": method,
      "parse_mode": parse_mode,
    };

    chatRespond_data_create_json.removeWhere((key, value) => value == null);
    ChatRespond chatRespond_data_create =
        ChatRespond(chatRespond_data_create_json);

    return chatRespond_data_create;
  }
}
