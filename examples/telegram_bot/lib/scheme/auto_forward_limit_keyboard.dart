// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "reply_markup.dart";

class AutoForwardLimitKeyboard extends JsonScheme {
  AutoForwardLimitKeyboard(super.rawData);

  static Map get defaultData {
    return {
      "@type": "auto_forward_limit_keyboard",
      "reply_markup": {
        "@type": "ReplyMarkup",
        "inline_keyboard": [
          [
            {"text": "Channel", "url": "https://t.me/roleplayeruniverse"}
          ]
        ]
      }
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

  ReplyMarkup get reply_markup {
    try {
      if (rawData["reply_markup"] is Map == false) {
        return ReplyMarkup({});
      }
      return ReplyMarkup(rawData["reply_markup"] as Map);
    } catch (e) {
      return ReplyMarkup({});
    }
  }

  static AutoForwardLimitKeyboard create({
    String special_type = "auto_forward_limit_keyboard",
    ReplyMarkup? reply_markup,
  }) {
    // AutoForwardLimitKeyboard autoForwardLimitKeyboard = AutoForwardLimitKeyboard({
    Map autoForwardLimitKeyboard_data_create_json = {
      "@type": special_type,
      "reply_markup": (reply_markup != null) ? reply_markup.toJson() : null,
    };

    autoForwardLimitKeyboard_data_create_json
        .removeWhere((key, value) => value == null);
    AutoForwardLimitKeyboard autoForwardLimitKeyboard_data_create =
        AutoForwardLimitKeyboard(autoForwardLimitKeyboard_data_create_json);

    return autoForwardLimitKeyboard_data_create;
  }
}
