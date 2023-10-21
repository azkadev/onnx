// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Setup extends JsonScheme {
  Setup(super.rawData);

  static Map get defaultData {
    return {"@type": "setup", "id": "setChat", "chat_id": 31313131};
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

  String? get id {
    try {
      if (rawData["id"] is String == false) {
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      if (rawData["chat_id"] is int == false) {
        return null;
      }
      return rawData["chat_id"] as int;
    } catch (e) {
      return null;
    }
  }

  static Setup create({
    String special_type = "setup",
    String? id,
    int? chat_id,
  }) {
    // Setup setup = Setup({
    Map setup_data_create_json = {
      "@type": special_type,
      "id": id,
      "chat_id": chat_id,
    };

    setup_data_create_json.removeWhere((key, value) => value == null);
    Setup setup_data_create = Setup(setup_data_create_json);

    return setup_data_create;
  }
}
