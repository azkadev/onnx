// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "force_subscribes.dart";
import "requests.dart";

class Cache extends JsonScheme {
  Cache(super.rawData);

  static Map get defaultData {
    return {
      "@type": "Cache",
      "client_user_id": 1213131,
      "request_limit": 1500,
      "add_member_count": 0,
      "add_member_date": 0,
      "force_subscribes": [
        {"user_id": 1201201201, "expire_date": 1301301031}
      ],
      "requests": [
        {
          "method": "sendMessage",
          "request_count": 0,
          "expire_date": 1301301031,
          "is_send_me": false
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

  int? get request_limit {
    try {
      if (rawData["request_limit"] is int == false) {
        return null;
      }
      return rawData["request_limit"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get add_member_count {
    try {
      if (rawData["add_member_count"] is int == false) {
        return null;
      }
      return rawData["add_member_count"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get add_member_date {
    try {
      if (rawData["add_member_date"] is int == false) {
        return null;
      }
      return rawData["add_member_date"] as int;
    } catch (e) {
      return null;
    }
  }

  List<ForceSubscribes> get force_subscribes {
    try {
      if (rawData["force_subscribes"] is List == false) {
        return [];
      }
      return (rawData["force_subscribes"] as List)
          .map((e) => ForceSubscribes(e as Map))
          .toList()
          .cast<ForceSubscribes>();
    } catch (e) {
      return [];
    }
  }

  List<Requests> get requests {
    try {
      if (rawData["requests"] is List == false) {
        return [];
      }
      return (rawData["requests"] as List)
          .map((e) => Requests(e as Map))
          .toList()
          .cast<Requests>();
    } catch (e) {
      return [];
    }
  }

  static Cache create({
    String special_type = "Cache",
    int? client_user_id,
    int? request_limit,
    int? add_member_count,
    int? add_member_date,
    List<ForceSubscribes>? force_subscribes,
    List<Requests>? requests,
  }) {
    // Cache cache = Cache({
    Map cache_data_create_json = {
      "@type": special_type,
      "client_user_id": client_user_id,
      "request_limit": request_limit,
      "add_member_count": add_member_count,
      "add_member_date": add_member_date,
      "force_subscribes":
          (force_subscribes != null) ? force_subscribes.toJson() : null,
      "requests": (requests != null) ? requests.toJson() : null,
    };

    cache_data_create_json.removeWhere((key, value) => value == null);
    Cache cache_data_create = Cache(cache_data_create_json);

    return cache_data_create;
  }
}
