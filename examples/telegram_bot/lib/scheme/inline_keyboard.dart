// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class InlineKeyboard extends JsonScheme {
  InlineKeyboard(super.rawData);

  static Map get defaultData {
    return {
      "text": "RolePlayer UniverseBot",
      "url": "https://t.me/RolePlayerUniverseBot",
      "@type": "inline_keyboard"
    };
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

  static InlineKeyboard create({
    String? text,
    String? url,
    String special_type = "inline_keyboard",
  }) {
    // InlineKeyboard inlineKeyboard = InlineKeyboard({
    Map inlineKeyboard_data_create_json = {
      "text": text,
      "url": url,
      "@type": special_type,
    };

    inlineKeyboard_data_create_json.removeWhere((key, value) => value == null);
    InlineKeyboard inlineKeyboard_data_create =
        InlineKeyboard(inlineKeyboard_data_create_json);

    return inlineKeyboard_data_create;
  }
}
