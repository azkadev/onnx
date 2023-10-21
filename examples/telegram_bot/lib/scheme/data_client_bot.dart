// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class DataClientBot extends JsonScheme {
  DataClientBot(super.rawData);

  static Map get defaultData {
    return {
      "@type": "dataClientBot",
      "token_bot": "",
      "bot_user_id": 0,
      "username_bot": "",
      "type_bot": "lifetime"
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

  int? get bot_user_id {
    try {
      if (rawData["bot_user_id"] is int == false) {
        return null;
      }
      return rawData["bot_user_id"] as int;
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

  String? get type_bot {
    try {
      if (rawData["type_bot"] is String == false) {
        return null;
      }
      return rawData["type_bot"] as String;
    } catch (e) {
      return null;
    }
  }

  static DataClientBot create({
    String special_type = "dataClientBot",
    String? token_bot,
    int? bot_user_id,
    String? username_bot,
    String? type_bot,
  }) {
    // DataClientBot dataClientBot = DataClientBot({
    Map dataClientBot_data_create_json = {
      "@type": special_type,
      "token_bot": token_bot,
      "bot_user_id": bot_user_id,
      "username_bot": username_bot,
      "type_bot": type_bot,
    };

    dataClientBot_data_create_json.removeWhere((key, value) => value == null);
    DataClientBot dataClientBot_data_create =
        DataClientBot(dataClientBot_data_create_json);

    return dataClientBot_data_create;
  }
}
