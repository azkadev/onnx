// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "restrict_data_user.g.dart";

@collection
class RestrictDataUser {
  // Id id = Isar.autoIncrement;
  Id id = Isar.autoIncrement;

  int user_id = 0;

  int chat_id = 0;

  bool is_restrict_secret_data_mute = false;

  bool is_restrict_force_subscribe_mute = false;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "user_id") {
      user_id = value;
    }

    if (key == "chat_id") {
      chat_id = value;
    }

    if (key == "is_restrict_secret_data_mute") {
      is_restrict_secret_data_mute = value;
    }

    if (key == "is_restrict_force_subscribe_mute") {
      is_restrict_force_subscribe_mute = value;
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
      "user_id": user_id,
      "chat_id": chat_id,
      "is_restrict_secret_data_mute": is_restrict_secret_data_mute,
      "is_restrict_force_subscribe_mute": is_restrict_force_subscribe_mute,
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
      "user_id": 0,
      "chat_id": 0,
      "is_restrict_secret_data_mute": false,
      "is_restrict_force_subscribe_mute": false
    };
  }

  static RestrictDataUser create({
    bool utils_is_print_data = false,
  }) {
    RestrictDataUser restrictDataUser_data_create = RestrictDataUser();

    if (utils_is_print_data) {
      // print(restrictDataUser_data_create.toStringPretty());
    }

    return restrictDataUser_data_create;
  }
}
