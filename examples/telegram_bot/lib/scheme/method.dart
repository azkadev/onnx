// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "send_telegram.dart";
import "trigger.dart";

class Method extends JsonScheme {
  Method(super.rawData);

  static Map get defaultData {
    return {
      "@type": "method",
      "action": {
        "@type": "sendTelegram",
        "data": {"@type": "data"}
      },
      "trigger": {"@type": "trigger"}
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

  SendTelegram get action {
    try {
      if (rawData["action"] is Map == false) {
        return SendTelegram({});
      }
      return SendTelegram(rawData["action"] as Map);
    } catch (e) {
      return SendTelegram({});
    }
  }

  Trigger get trigger {
    try {
      if (rawData["trigger"] is Map == false) {
        return Trigger({});
      }
      return Trigger(rawData["trigger"] as Map);
    } catch (e) {
      return Trigger({});
    }
  }

  static Method create({
    String special_type = "method",
    SendTelegram? action,
    Trigger? trigger,
  }) {
    // Method method = Method({
    Map method_data_create_json = {
      "@type": special_type,
      "action": (action != null) ? action.toJson() : null,
      "trigger": (trigger != null) ? trigger.toJson() : null,
    };

    method_data_create_json.removeWhere((key, value) => value == null);
    Method method_data_create = Method(method_data_create_json);

    return method_data_create;
  }
}
