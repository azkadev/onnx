// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "app_account_hexaminate.g.dart";

@collection
class AppAccountHexaminate {
  // Id id = Isar.autoIncrement;

  Id isar_data_id = Isar.autoIncrement;

  int id = 0;

  String created_at = "";

  int date = 0;

  int meesagee_user_id = 0;

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

    if (key == "created_at") {
      created_at = value;
    }

    if (key == "date") {
      date = value;
    }

    if (key == "meesagee_user_id") {
      meesagee_user_id = value;
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
      "created_at": created_at,
      "date": date,
      "meesagee_user_id": meesagee_user_id,
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
      "created_at": "",
      "date": 0,
      "meesagee_user_id": 0
    };
  }

  static AppAccountHexaminate create({
    bool utils_is_print_data = false,
  }) {
    AppAccountHexaminate appAccountHexaminate_data_create =
        AppAccountHexaminate();

    if (utils_is_print_data) {
      // print(appAccountHexaminate_data_create.toStringPretty());
    }

    return appAccountHexaminate_data_create;
  }
}
