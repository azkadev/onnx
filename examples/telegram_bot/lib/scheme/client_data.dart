// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "azka.dart";

class ClientData extends JsonScheme {
  ClientData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "ClientData",
      "type": "core",
      "chat_usernames": ["@GLXCORPBOT"],
      "is_force_subscribe_chat": true,
      "skip_chat_ids": [-1201201031030],
      "channels": ["@GLXCORPBOT"],
      "action": [
        {
          "@type": "Azka",
          "method": "",
          "data": {"@type": "aa"}
        }
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

  List<String> get channels {
    try {
      if (rawData["channels"] is List == false) {
        return [];
      }
      return (rawData["channels"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  List<Azka> get action {
    try {
      if (rawData["action"] is List == false) {
        return [];
      }
      return (rawData["action"] as List)
          .map((e) => Azka(e as Map))
          .toList()
          .cast<Azka>();
    } catch (e) {
      return [];
    }
  }

  static ClientData create({
    String special_type = "ClientData",
    String? type,
    List<String>? chat_usernames,
    bool? is_force_subscribe_chat,
    List<int>? skip_chat_ids,
    List<String>? channels,
    List<Azka>? action,
  }) {
    // ClientData clientData = ClientData({
    Map clientData_data_create_json = {
      "@type": special_type,
      "type": type,
      "chat_usernames": chat_usernames,
      "is_force_subscribe_chat": is_force_subscribe_chat,
      "skip_chat_ids": skip_chat_ids,
      "channels": channels,
      "action": (action != null) ? action.toJson() : null,
    };

    clientData_data_create_json.removeWhere((key, value) => value == null);
    ClientData clientData_data_create = ClientData(clientData_data_create_json);

    return clientData_data_create;
  }
}
