// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class DataClients extends JsonScheme {
  DataClients(super.rawData);

  static Map get defaultData {
    return {
      "type": "core",
      "chat_usernames": [""],
      "is_force_subscribe_chat": true,
      "skip_chat_ids": [0],
      "@type": "data_clients"
    };
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

  List<String> get chat_usernames {
    try {
      if (rawData["chat_usernames"] is List == false) {
        return [];
      }
      return (rawData["chat_usernames"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_force_subscribe_chat {
    try {
      if (rawData["is_force_subscribe_chat"] is bool == false) {
        return null;
      }
      return rawData["is_force_subscribe_chat"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<int> get skip_chat_ids {
    try {
      if (rawData["skip_chat_ids"] is List == false) {
        return [];
      }
      return (rawData["skip_chat_ids"] as List).cast<int>();
    } catch (e) {
      return [];
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

  static DataClients create({
    String? type,
    List<String>? chat_usernames,
    bool? is_force_subscribe_chat,
    List<int>? skip_chat_ids,
    String special_type = "data_clients",
  }) {
    // DataClients dataClients = DataClients({
    Map dataClients_data_create_json = {
      "type": type,
      "chat_usernames": chat_usernames,
      "is_force_subscribe_chat": is_force_subscribe_chat,
      "skip_chat_ids": skip_chat_ids,
      "@type": special_type,
    };

    dataClients_data_create_json.removeWhere((key, value) => value == null);
    DataClients dataClients_data_create =
        DataClients(dataClients_data_create_json);

    return dataClients_data_create;
  }
}
