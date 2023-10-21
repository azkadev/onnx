// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class TdlibOption extends JsonScheme {
  TdlibOption(super.rawData);

  static Map get defaultData {
    return {
      "@type": "tdlib_option",
      "use_file_database": true,
      "use_chat_info_database": true,
      "use_message_database": true,
      "use_secret_chats": true,
      "update_time_out": 0.0,
      "max_client": 0
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

  bool? get use_file_database {
    try {
      if (rawData["use_file_database"] is bool == false) {
        return null;
      }
      return rawData["use_file_database"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get use_chat_info_database {
    try {
      if (rawData["use_chat_info_database"] is bool == false) {
        return null;
      }
      return rawData["use_chat_info_database"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get use_message_database {
    try {
      if (rawData["use_message_database"] is bool == false) {
        return null;
      }
      return rawData["use_message_database"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get use_secret_chats {
    try {
      if (rawData["use_secret_chats"] is bool == false) {
        return null;
      }
      return rawData["use_secret_chats"] as bool;
    } catch (e) {
      return null;
    }
  }

  double? get update_time_out {
    try {
      if (rawData["update_time_out"] is double == false) {
        return null;
      }
      return rawData["update_time_out"] as double;
    } catch (e) {
      return null;
    }
  }

  int? get max_client {
    try {
      if (rawData["max_client"] is int == false) {
        return null;
      }
      return rawData["max_client"] as int;
    } catch (e) {
      return null;
    }
  }

  static TdlibOption create({
    String special_type = "tdlib_option",
    bool? use_file_database,
    bool? use_chat_info_database,
    bool? use_message_database,
    bool? use_secret_chats,
    double? update_time_out,
    int? max_client,
  }) {
    // TdlibOption tdlibOption = TdlibOption({
    Map tdlibOption_data_create_json = {
      "@type": special_type,
      "use_file_database": use_file_database,
      "use_chat_info_database": use_chat_info_database,
      "use_message_database": use_message_database,
      "use_secret_chats": use_secret_chats,
      "update_time_out": update_time_out,
      "max_client": max_client,
    };

    tdlibOption_data_create_json.removeWhere((key, value) => value == null);
    TdlibOption tdlibOption_data_create =
        TdlibOption(tdlibOption_data_create_json);

    return tdlibOption_data_create;
  }
}
