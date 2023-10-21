// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ContentMessageOption extends JsonScheme {
  ContentMessageOption(super.rawData);

  static Map get defaultData {
    return {
      "@type": "content_message_option",
      "type": "all",
      "min_msg": "free",
      "max_msg": "free",
      "min_msg_length": 0,
      "max_msg_length": 0
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

  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get min_msg {
    try {
      if (rawData["min_msg"] is String == false) {
        return null;
      }
      return rawData["min_msg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get max_msg {
    try {
      if (rawData["max_msg"] is String == false) {
        return null;
      }
      return rawData["max_msg"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get min_msg_length {
    try {
      if (rawData["min_msg_length"] is int == false) {
        return null;
      }
      return rawData["min_msg_length"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get max_msg_length {
    try {
      if (rawData["max_msg_length"] is int == false) {
        return null;
      }
      return rawData["max_msg_length"] as int;
    } catch (e) {
      return null;
    }
  }

  static ContentMessageOption create({
    String special_type = "content_message_option",
    String? type,
    String? min_msg,
    String? max_msg,
    int? min_msg_length,
    int? max_msg_length,
  }) {
    // ContentMessageOption contentMessageOption = ContentMessageOption({
    Map contentMessageOption_data_create_json = {
      "@type": special_type,
      "type": type,
      "min_msg": min_msg,
      "max_msg": max_msg,
      "min_msg_length": min_msg_length,
      "max_msg_length": max_msg_length,
    };

    contentMessageOption_data_create_json
        .removeWhere((key, value) => value == null);
    ContentMessageOption contentMessageOption_data_create =
        ContentMessageOption(contentMessageOption_data_create_json);

    return contentMessageOption_data_create;
  }
}
