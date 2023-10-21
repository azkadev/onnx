// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class LimitDataState extends JsonScheme {
  LimitDataState(super.rawData);

  static Map get defaultData {
    return {
      "@type": "limit_data_state",
      "is_auto_read": true,
      "is_auto_block": false,
      "is_afk": false,
      "is_ai_chatbot": false,
      "is_ai_task": false,
      "is_force_subscribe": false,
      "is_secret_data": false,
      "is_secret_data_user": false
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

  bool? get is_auto_read {
    try {
      if (rawData["is_auto_read"] is bool == false) {
        return null;
      }
      return rawData["is_auto_read"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_auto_block {
    try {
      if (rawData["is_auto_block"] is bool == false) {
        return null;
      }
      return rawData["is_auto_block"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_afk {
    try {
      if (rawData["is_afk"] is bool == false) {
        return null;
      }
      return rawData["is_afk"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_ai_chatbot {
    try {
      if (rawData["is_ai_chatbot"] is bool == false) {
        return null;
      }
      return rawData["is_ai_chatbot"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_ai_task {
    try {
      if (rawData["is_ai_task"] is bool == false) {
        return null;
      }
      return rawData["is_ai_task"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_force_subscribe {
    try {
      if (rawData["is_force_subscribe"] is bool == false) {
        return null;
      }
      return rawData["is_force_subscribe"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_secret_data {
    try {
      if (rawData["is_secret_data"] is bool == false) {
        return null;
      }
      return rawData["is_secret_data"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_secret_data_user {
    try {
      if (rawData["is_secret_data_user"] is bool == false) {
        return null;
      }
      return rawData["is_secret_data_user"] as bool;
    } catch (e) {
      return null;
    }
  }

  static LimitDataState create({
    String special_type = "limit_data_state",
    bool? is_auto_read,
    bool? is_auto_block,
    bool? is_afk,
    bool? is_ai_chatbot,
    bool? is_ai_task,
    bool? is_force_subscribe,
    bool? is_secret_data,
    bool? is_secret_data_user,
  }) {
    // LimitDataState limitDataState = LimitDataState({
    Map limitDataState_data_create_json = {
      "@type": special_type,
      "is_auto_read": is_auto_read,
      "is_auto_block": is_auto_block,
      "is_afk": is_afk,
      "is_ai_chatbot": is_ai_chatbot,
      "is_ai_task": is_ai_task,
      "is_force_subscribe": is_force_subscribe,
      "is_secret_data": is_secret_data,
      "is_secret_data_user": is_secret_data_user,
    };

    limitDataState_data_create_json.removeWhere((key, value) => value == null);
    LimitDataState limitDataState_data_create =
        LimitDataState(limitDataState_data_create_json);

    return limitDataState_data_create;
  }
}
