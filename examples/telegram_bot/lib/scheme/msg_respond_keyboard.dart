// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "inline_keyboard.dart";

class MsgRespondKeyboard extends JsonScheme {
  MsgRespondKeyboard(super.rawData);

  static Map get defaultData {
    return {
      "@type": "msg_respond_keyboard",
      "inline_keyboard": [
        [
          {"text": "POST", "url": "{msg_post_link}"}
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

  static MsgRespondKeyboard create({
    String special_type = "msg_respond_keyboard",
    List<List<InlineKeyboard>>? inline_keyboard,
  }) {
    // MsgRespondKeyboard msgRespondKeyboard = MsgRespondKeyboard({
    Map msgRespondKeyboard_data_create_json = {
      "@type": special_type,
      "inline_keyboard": (inline_keyboard != null)
          ? inline_keyboard
              .map((res) => res.map((e) => e.toJson()).toList().cast<Map>())
              .toList()
              .cast<List<Map>>()
          : null,
    };

    msgRespondKeyboard_data_create_json
        .removeWhere((key, value) => value == null);
    MsgRespondKeyboard msgRespondKeyboard_data_create =
        MsgRespondKeyboard(msgRespondKeyboard_data_create_json);

    return msgRespondKeyboard_data_create;
  }
}
