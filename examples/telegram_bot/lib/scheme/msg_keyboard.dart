// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "inline_keyboard.dart";

class MsgKeyboard extends JsonScheme {
  MsgKeyboard(super.rawData);

  static Map get defaultData {
    return {
      "@type": "msgKeyboard",
      "inline_keyboard": [
        [
          {
            "@type": "inlineKeyboard",
            "text": "",
            "url": "",
            "callback_data": ""
          }
        ]
      ]
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

  List<List<InlineKeyboard>> get inline_keyboard {
    try {
      if (rawData["inline_keyboard"] is List == false) {
        return [];
      }
      return (rawData["inline_keyboard"] as List<List>)
          .map((e) => e
              .map((e) => InlineKeyboard(e as Map))
              .toList()
              .cast<InlineKeyboard>())
          .toList()
          .cast<List<InlineKeyboard>>();
    } catch (e) {
      return [];
    }
  }

  static MsgKeyboard create({
    String special_type = "msgKeyboard",
    List<List<InlineKeyboard>>? inline_keyboard,
  }) {
    // MsgKeyboard msgKeyboard = MsgKeyboard({
    Map msgKeyboard_data_create_json = {
      "@type": special_type,
      "inline_keyboard": (inline_keyboard != null)
          ? inline_keyboard
              .map((res) => res.map((e) => e.toJson()).toList().cast<Map>())
              .toList()
              .cast<List<Map>>()
          : null,
    };

    msgKeyboard_data_create_json.removeWhere((key, value) => value == null);
    MsgKeyboard msgKeyboard_data_create =
        MsgKeyboard(msgKeyboard_data_create_json);

    return msgKeyboard_data_create;
  }
}
