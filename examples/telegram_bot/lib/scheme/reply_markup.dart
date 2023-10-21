// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "inline_keyboard.dart";

class ReplyMarkup extends JsonScheme {
  ReplyMarkup(super.rawData);

  static Map get defaultData {
    return {
      "@type": "reply_markup",
      "inline_keyboard": [
        [
          {"text": "📜️ Baca Full 📜️", "url": "https://azkadev.netlify.app"}
        ],
        [
          {
            "text": "Tutorial 1",
            "url": "https://www.youtube.com/watch?v=0Sm72lu7Cdk"
          },
          {
            "text": "Tutorial 2",
            "url": "https://www.youtube.com/watch?v=n_nQYDp1KNY"
          }
        ],
        [
          {"text": "Azkadev Bot", "url": "https://t.me/AzkaDevBot"}
        ],
        [
          {"text": "Galaxeus Bot", "url": "https://t.me/GalaxeusBot"},
          {"text": "HexaMinate Bot", "url": "https://t.me/HexaMinateBot"}
        ],
        [
          {
            "text": "RolePlayer UniverseBot",
            "url": "https://t.me/RolePlayerUniverseBot"
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

  static ReplyMarkup create({
    String special_type = "reply_markup",
    List<List<InlineKeyboard>>? inline_keyboard,
  }) {
    // ReplyMarkup replyMarkup = ReplyMarkup({
    Map replyMarkup_data_create_json = {
      "@type": special_type,
      "inline_keyboard": (inline_keyboard != null)
          ? inline_keyboard
              .map((res) => res.map((e) => e.toJson()).toList().cast<Map>())
              .toList()
              .cast<List<Map>>()
          : null,
    };

    replyMarkup_data_create_json.removeWhere((key, value) => value == null);
    ReplyMarkup replyMarkup_data_create =
        ReplyMarkup(replyMarkup_data_create_json);

    return replyMarkup_data_create;
  }
}
