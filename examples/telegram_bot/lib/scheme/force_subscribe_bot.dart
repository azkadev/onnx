// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ForceSubscribeBot extends JsonScheme {
  ForceSubscribeBot(super.rawData);

  static Map get defaultData {
    return {
      "@type": "force_subscribe_bot",
      "token_bot": "",
      "username_bot": ""
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

  String? get token_bot {
    try {
      if (rawData["token_bot"] is String == false) {
        return null;
      }
      return rawData["token_bot"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get username_bot {
    try {
      if (rawData["username_bot"] is String == false) {
        return null;
      }
      return rawData["username_bot"] as String;
    } catch (e) {
      return null;
    }
  }

  static ForceSubscribeBot create({
    String special_type = "force_subscribe_bot",
    String? token_bot,
    String? username_bot,
  }) {
    // ForceSubscribeBot forceSubscribeBot = ForceSubscribeBot({
    Map forceSubscribeBot_data_create_json = {
      "@type": special_type,
      "token_bot": token_bot,
      "username_bot": username_bot,
    };

    forceSubscribeBot_data_create_json
        .removeWhere((key, value) => value == null);
    ForceSubscribeBot forceSubscribeBot_data_create =
        ForceSubscribeBot(forceSubscribeBot_data_create_json);

    return forceSubscribeBot_data_create;
  }
}
