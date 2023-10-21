// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "call_api_rate_limit.g.dart";

@collection
class CallApiRateLimit {
  // Id id = Isar.autoIncrement;

  Id isar_data_id = Isar.autoIncrement;

  int client_user_id = 0;

  String method = "";

  int expire_date = 0;

  int count = 0;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "client_user_id") {
      client_user_id = value;
    }

    if (key == "method") {
      method = value;
    }

    if (key == "expire_date") {
      expire_date = value;
    }

    if (key == "count") {
      count = value;
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
      "client_user_id": client_user_id,
      "method": method,
      "expire_date": expire_date,
      "count": count,
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
    return {"client_user_id": 0, "method": "", "expire_date": 0, "count": 0};
  }

  static CallApiRateLimit create({
    bool utils_is_print_data = false,
  }) {
    CallApiRateLimit callApiRateLimit_data_create = CallApiRateLimit();

    if (utils_is_print_data) {
      // print(callApiRateLimit_data_create.toStringPretty());
    }

    return callApiRateLimit_data_create;
  }
}
