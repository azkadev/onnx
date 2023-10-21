// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class CallApiRateLimit extends JsonScheme {
  CallApiRateLimit(super.rawData);

  static Map get defaultData {
    return {
      "@type": "callApiRateLimit",
      "client_user_id": 0,
      "method": "",
      "expire_date": 0,
      "count": 0
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

  int? get client_user_id {
    try {
      if (rawData["client_user_id"] is int == false) {
        return null;
      }
      return rawData["client_user_id"] as int;
    } catch (e) {
      return null;
    }
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

  int? get count {
    try {
      if (rawData["count"] is int == false) {
        return null;
      }
      return rawData["count"] as int;
    } catch (e) {
      return null;
    }
  }

  static CallApiRateLimit create({
    String special_type = "callApiRateLimit",
    int? client_user_id,
    String? method,
    int? expire_date,
    int? count,
  }) {
    // CallApiRateLimit callApiRateLimit = CallApiRateLimit({
    Map callApiRateLimit_data_create_json = {
      "@type": special_type,
      "client_user_id": client_user_id,
      "method": method,
      "expire_date": expire_date,
      "count": count,
    };

    callApiRateLimit_data_create_json
        .removeWhere((key, value) => value == null);
    CallApiRateLimit callApiRateLimit_data_create =
        CallApiRateLimit(callApiRateLimit_data_create_json);

    return callApiRateLimit_data_create;
  }
}
