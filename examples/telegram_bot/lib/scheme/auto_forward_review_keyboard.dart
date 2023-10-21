// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "reply_markup.dart";

class AutoForwardReviewKeyboard extends JsonScheme {
  AutoForwardReviewKeyboard(super.rawData);

  static Map get defaultData {
    return {
      "@type": "auto_forward_review_keyboard",
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

  static AutoForwardReviewKeyboard create({
    String special_type = "auto_forward_review_keyboard",
    ReplyMarkup? reply_markup,
  }) {
    // AutoForwardReviewKeyboard autoForwardReviewKeyboard = AutoForwardReviewKeyboard({
    Map autoForwardReviewKeyboard_data_create_json = {
      "@type": special_type,
      "reply_markup": (reply_markup != null) ? reply_markup.toJson() : null,
    };

    autoForwardReviewKeyboard_data_create_json
        .removeWhere((key, value) => value == null);
    AutoForwardReviewKeyboard autoForwardReviewKeyboard_data_create =
        AutoForwardReviewKeyboard(autoForwardReviewKeyboard_data_create_json);

    return autoForwardReviewKeyboard_data_create;
  }
}
