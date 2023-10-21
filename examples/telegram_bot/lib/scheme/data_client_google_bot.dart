// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class DataClientGoogleBot extends JsonScheme {
  DataClientGoogleBot(super.rawData);

  static Map get defaultData {
    return {
      "@type": "dataClientGoogleBot",
      "bot_user_id": 0,
      "owner_user_id": 0,
      "date": 0,
      "expire_date": 0,
      "is_login": false,
      "type": "",
      "count_month": 0,
      "count_buy": 0
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

  int? get bot_user_id {
    try {
      if (rawData["bot_user_id"] is int == false) {
        return null;
      }
      return rawData["bot_user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get owner_user_id {
    try {
      if (rawData["owner_user_id"] is int == false) {
        return null;
      }
      return rawData["owner_user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      if (rawData["date"] is int == false) {
        return null;
      }
      return rawData["date"] as int;
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

  bool? get is_login {
    try {
      if (rawData["is_login"] is bool == false) {
        return null;
      }
      return rawData["is_login"] as bool;
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

  int? get count_month {
    try {
      if (rawData["count_month"] is int == false) {
        return null;
      }
      return rawData["count_month"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get count_buy {
    try {
      if (rawData["count_buy"] is int == false) {
        return null;
      }
      return rawData["count_buy"] as int;
    } catch (e) {
      return null;
    }
  }

  static DataClientGoogleBot create({
    String special_type = "dataClientGoogleBot",
    int? bot_user_id,
    int? owner_user_id,
    int? date,
    int? expire_date,
    bool? is_login,
    String? type,
    int? count_month,
    int? count_buy,
  }) {
    // DataClientGoogleBot dataClientGoogleBot = DataClientGoogleBot({
    Map dataClientGoogleBot_data_create_json = {
      "@type": special_type,
      "bot_user_id": bot_user_id,
      "owner_user_id": owner_user_id,
      "date": date,
      "expire_date": expire_date,
      "is_login": is_login,
      "type": type,
      "count_month": count_month,
      "count_buy": count_buy,
    };

    dataClientGoogleBot_data_create_json
        .removeWhere((key, value) => value == null);
    DataClientGoogleBot dataClientGoogleBot_data_create =
        DataClientGoogleBot(dataClientGoogleBot_data_create_json);

    return dataClientGoogleBot_data_create;
  }
}
