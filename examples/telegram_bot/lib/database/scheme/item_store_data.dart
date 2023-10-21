// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "item_store_data.g.dart";

@collection
class ItemStoreData {
  // Id id = Isar.autoIncrement;
  Id id = Isar.autoIncrement;

  int client_user_id = 0;

  String item_unique_id = "";

  String name = "";

  int price = 0;

  String description = "";

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "client_user_id") {
      client_user_id = value;
    }

    if (key == "item_unique_id") {
      item_unique_id = value;
    }

    if (key == "name") {
      name = value;
    }

    if (key == "price") {
      price = value;
    }

    if (key == "description") {
      description = value;
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
      "item_unique_id": item_unique_id,
      "name": name,
      "price": price,
      "description": description,
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
      "client_user_id": 0,
      "item_unique_id": "",
      "name": "",
      "price": 0,
      "description": ""
    };
  }

  static ItemStoreData create({
    bool utils_is_print_data = false,
  }) {
    ItemStoreData itemStoreData_data_create = ItemStoreData();

    if (utils_is_print_data) {
      // print(itemStoreData_data_create.toStringPretty());
    }

    return itemStoreData_data_create;
  }
}
