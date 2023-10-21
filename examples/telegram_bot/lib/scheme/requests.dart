// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Requests extends JsonScheme {
  Requests(super.rawData);

  static Map get defaultData {
    return {
      "method": "sendMessage",
      "request_count": 0,
      "expire_date": 1301301031,
      "is_send_me": false,
      "@type": "requests"
    };
  }

  String? get method {
    try {
      if (rawData["method"] is String == false) {
        return null;
      }
      return rawData["method"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get request_count {
    try {
      if (rawData["request_count"] is int == false) {
        return null;
      }
      return rawData["request_count"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get expire_date {
    try {
      if (rawData["expire_date"] is int == false) {
        return null;
      }
      return rawData["expire_date"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get is_send_me {
    try {
      if (rawData["is_send_me"] is bool == false) {
        return null;
      }
      return rawData["is_send_me"] as bool;
    } catch (e) {
      return null;
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

  static Requests create({
    String? method,
    int? request_count,
    int? expire_date,
    bool? is_send_me,
    String special_type = "requests",
  }) {
    // Requests requests = Requests({
    Map requests_data_create_json = {
      "method": method,
      "request_count": request_count,
      "expire_date": expire_date,
      "is_send_me": is_send_me,
      "@type": special_type,
    };

    requests_data_create_json.removeWhere((key, value) => value == null);
    Requests requests_data_create = Requests(requests_data_create_json);

    return requests_data_create;
  }
}
