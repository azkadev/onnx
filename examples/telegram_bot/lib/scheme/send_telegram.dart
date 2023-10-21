// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "data.dart";

class SendTelegram extends JsonScheme {
  SendTelegram(super.rawData);

  static Map get defaultData {
    return {
      "@type": "sendTelegram",
      "data": {"@type": "data"}
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

  Data get data {
    try {
      if (rawData["data"] is Map == false) {
        return Data({});
      }
      return Data(rawData["data"] as Map);
    } catch (e) {
      return Data({});
    }
  }

  static SendTelegram create({
    String special_type = "sendTelegram",
    Data? data,
  }) {
    // SendTelegram sendTelegram = SendTelegram({
    Map sendTelegram_data_create_json = {
      "@type": special_type,
      "data": (data != null) ? data.toJson() : null,
    };

    sendTelegram_data_create_json.removeWhere((key, value) => value == null);
    SendTelegram sendTelegram_data_create =
        SendTelegram(sendTelegram_data_create_json);

    return sendTelegram_data_create;
  }
}
