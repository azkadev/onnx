// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "app_account_meesagee.g.dart";

@collection
class AppAccountMeesagee {
  // Id id = Isar.autoIncrement;

  Id isar_data_id = Isar.autoIncrement;

  int id = 0;

  String username = "";

  String created_at = "";

  String password = "";

  int date = 0;

  bool is_verified = false;

  int expire_date_verified = 0;

  String first_name = "";

  String last_name = "";

  bool is_bot = false;

  bool is_support = false;

  String secret_data = "";

  int telegram_user_id = 0;

  int phone_number = 0;

  int owner_user_id = 0;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "isar_data_id") {
      isar_data_id = value;
    }

    if (key == "id") {
      id = value;
    }

    if (key == "username") {
      username = value;
    }

    if (key == "created_at") {
      created_at = value;
    }

    if (key == "password") {
      password = value;
    }

    if (key == "date") {
      date = value;
    }

    if (key == "is_verified") {
      is_verified = value;
    }

    if (key == "expire_date_verified") {
      expire_date_verified = value;
    }

    if (key == "first_name") {
      first_name = value;
    }

    if (key == "last_name") {
      last_name = value;
    }

    if (key == "is_bot") {
      is_bot = value;
    }

    if (key == "is_support") {
      is_support = value;
    }

    if (key == "secret_data") {
      secret_data = value;
    }

    if (key == "telegram_user_id") {
      telegram_user_id = value;
    }

    if (key == "phone_number") {
      phone_number = value;
    }

    if (key == "owner_user_id") {
      owner_user_id = value;
    }
  }

  /// return original data json
  Map utils_remove_values_null() {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      if (value == null) {
        rawData.remove(key);
      }
    });
    return rawData;
  }

  /// return original data json
  Map utils_remove_by_values(List values) {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      for (var element in values) {
        if (value == element) {
          rawData.remove(key);
        }
      }
    });

    return rawData;
  }

  /// return original data json
  Map utils_remove_by_keys(List keys) {
    Map rawData = toJson();
    for (var element in keys) {
      rawData.remove(element);
    }
    return rawData;
  }

  /// return original data json
  Map utils_filter_by_keys(List keys) {
    Map rawData = toJson();
    Map jsonData = {};
    for (var key in keys) {
      jsonData[key] = rawData[key];
    }
    return jsonData;
  }

  /// return original data json
  Map toMap() {
    return toJson();
  }

  /// return original data json
  Map toJson() {
    return {
      "isar_data_id": isar_data_id,
      "id": id,
      "username": username,
      "created_at": created_at,
      "password": password,
      "date": date,
      "is_verified": is_verified,
      "expire_date_verified": expire_date_verified,
      "first_name": first_name,
      "last_name": last_name,
      "is_bot": is_bot,
      "is_support": is_support,
      "secret_data": secret_data,
      "telegram_user_id": telegram_user_id,
      "phone_number": phone_number,
      "owner_user_id": owner_user_id,
    };
  }

  /// return string data encode json original data
  String toStringPretty() {
    return JsonEncoder.withIndent(" " * 2).convert(toJson());
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }

  /// return original data json
  static Map get defaultData {
    return {
      "isar_data_id": 0,
      "id": 0,
      "username": "",
      "created_at": "",
      "password": "",
      "date": 0,
      "is_verified": false,
      "expire_date_verified": 0,
      "first_name": "",
      "last_name": "",
      "is_bot": false,
      "is_support": false,
      "secret_data": "",
      "telegram_user_id": 0,
      "phone_number": 0,
      "owner_user_id": 0
    };
  }

  static AppAccountMeesagee create({
    bool utils_is_print_data = false,
  }) {
    AppAccountMeesagee appAccountMeesagee_data_create = AppAccountMeesagee();

    if (utils_is_print_data) {
      // print(appAccountMeesagee_data_create.toStringPretty());
    }

    return appAccountMeesagee_data_create;
  }
}
