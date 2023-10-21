// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class MustHaveContentMsgKeyboard extends JsonScheme {
  MustHaveContentMsgKeyboard(super.rawData);

  static Map get defaultData {
    return {
      "@type": "must_have_content_msg_keyboard",
      "remove_keyboard": false
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

  bool? get remove_keyboard {
    try {
      if (rawData["remove_keyboard"] is bool == false) {
        return null;
      }
      return rawData["remove_keyboard"] as bool;
    } catch (e) {
      return null;
    }
  }

  static MustHaveContentMsgKeyboard create({
    String special_type = "must_have_content_msg_keyboard",
    bool? remove_keyboard,
  }) {
    // MustHaveContentMsgKeyboard mustHaveContentMsgKeyboard = MustHaveContentMsgKeyboard({
    Map mustHaveContentMsgKeyboard_data_create_json = {
      "@type": special_type,
      "remove_keyboard": remove_keyboard,
    };

    mustHaveContentMsgKeyboard_data_create_json
        .removeWhere((key, value) => value == null);
    MustHaveContentMsgKeyboard mustHaveContentMsgKeyboard_data_create =
        MustHaveContentMsgKeyboard(mustHaveContentMsgKeyboard_data_create_json);

    return mustHaveContentMsgKeyboard_data_create;
  }
}
