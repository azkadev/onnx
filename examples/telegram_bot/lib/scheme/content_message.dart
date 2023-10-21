// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ContentMessage extends JsonScheme {
  ContentMessage(super.rawData);

  static Map get defaultData {
    return {
      "@type": "content_message",
      "all": "free",
      "mention": "free",
      "hashtag": "free",
      "bot_command": "free",
      "url": "free",
      "email": "free",
      "phone_number": "free",
      "bold": "free",
      "italic": "free",
      "underline": "free",
      "strikethrough": "free",
      "spoiler": "free",
      "pre": "free"
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

  String? get all {
    try {
      if (rawData["all"] is String == false) {
        return null;
      }
      return rawData["all"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mention {
    try {
      if (rawData["mention"] is String == false) {
        return null;
      }
      return rawData["mention"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get hashtag {
    try {
      if (rawData["hashtag"] is String == false) {
        return null;
      }
      return rawData["hashtag"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bot_command {
    try {
      if (rawData["bot_command"] is String == false) {
        return null;
      }
      return rawData["bot_command"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      if (rawData["url"] is String == false) {
        return null;
      }
      return rawData["url"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get email {
    try {
      if (rawData["email"] is String == false) {
        return null;
      }
      return rawData["email"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get phone_number {
    try {
      if (rawData["phone_number"] is String == false) {
        return null;
      }
      return rawData["phone_number"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bold {
    try {
      if (rawData["bold"] is String == false) {
        return null;
      }
      return rawData["bold"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get italic {
    try {
      if (rawData["italic"] is String == false) {
        return null;
      }
      return rawData["italic"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get underline {
    try {
      if (rawData["underline"] is String == false) {
        return null;
      }
      return rawData["underline"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get strikethrough {
    try {
      if (rawData["strikethrough"] is String == false) {
        return null;
      }
      return rawData["strikethrough"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get spoiler {
    try {
      if (rawData["spoiler"] is String == false) {
        return null;
      }
      return rawData["spoiler"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pre {
    try {
      if (rawData["pre"] is String == false) {
        return null;
      }
      return rawData["pre"] as String;
    } catch (e) {
      return null;
    }
  }

  static ContentMessage create({
    String special_type = "content_message",
    String? all,
    String? mention,
    String? hashtag,
    String? bot_command,
    String? url,
    String? email,
    String? phone_number,
    String? bold,
    String? italic,
    String? underline,
    String? strikethrough,
    String? spoiler,
    String? pre,
  }) {
    // ContentMessage contentMessage = ContentMessage({
    Map contentMessage_data_create_json = {
      "@type": special_type,
      "all": all,
      "mention": mention,
      "hashtag": hashtag,
      "bot_command": bot_command,
      "url": url,
      "email": email,
      "phone_number": phone_number,
      "bold": bold,
      "italic": italic,
      "underline": underline,
      "strikethrough": strikethrough,
      "spoiler": spoiler,
      "pre": pre,
    };

    contentMessage_data_create_json.removeWhere((key, value) => value == null);
    ContentMessage contentMessage_data_create =
        ContentMessage(contentMessage_data_create_json);

    return contentMessage_data_create;
  }
}
