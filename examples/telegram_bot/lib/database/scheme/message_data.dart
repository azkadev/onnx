// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "message_data.g.dart";

@collection
class MessageData {
  // Id id = Isar.autoIncrement;
  Id id = Isar.autoIncrement;

  int chat_id = -100;

  int message_id = 0;

  String token_bot = "";

  int date = 0;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "chat_id") {
      chat_id = value;
    }

    if (key == "message_id") {
      message_id = value;
    }

    if (key == "token_bot") {
      token_bot = value;
    }

    if (key == "date") {
      date = value;
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
      "chat_id": chat_id,
      "message_id": message_id,
      "token_bot": token_bot,
      "date": date,
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
    return {"chat_id": -100, "message_id": 0, "token_bot": "", "date": 0};
  }

  static MessageData create({
    bool utils_is_print_data = false,
  }) {
    MessageData messageData_data_create = MessageData();

    if (utils_is_print_data) {
      // print(messageData_data_create.toStringPretty());
    }

    return messageData_data_create;
  }
}
