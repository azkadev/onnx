// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "tg_client_data.g.dart";

@collection
class TgClientData {
  Id id = Isar.autoIncrement;

  String created_at = "2022-12-26T05:26:40.500935+00:00";

  int client_user_id = 0;

  int client_id = 0;

  String client_token = "";

  int owner_user_id = 0;

  String client_type = "";

  String from_bot_type = "";

  bool can_join_groups = false;

  bool can_read_all_group_messages = false;

  int from_bot_user_id = 0;

  int expire_date = 0;

  String client_username = "";

  String client_data = "{}";

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "id") {
      id = value;
    }

    if (key == "created_at") {
      created_at = value;
    }

    if (key == "client_user_id") {
      client_user_id = value;
    }

    if (key == "client_id") {
      client_id = value;
    }

    if (key == "client_token") {
      client_token = value;
    }

    if (key == "owner_user_id") {
      owner_user_id = value;
    }

    if (key == "client_type") {
      client_type = value;
    }

    if (key == "from_bot_type") {
      from_bot_type = value;
    }

    if (key == "can_join_groups") {
      can_join_groups = value;
    }

    if (key == "can_read_all_group_messages") {
      can_read_all_group_messages = value;
    }

    if (key == "from_bot_user_id") {
      from_bot_user_id = value;
    }

    if (key == "expire_date") {
      expire_date = value;
    }

    if (key == "client_username") {
      client_username = value;
    }

    if (key == "client_data") {
      client_data = value;
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
      "id": id,
      "created_at": created_at,
      "client_user_id": client_user_id,
      "client_id": client_id,
      "client_token": client_token,
      "owner_user_id": owner_user_id,
      "client_type": client_type,
      "from_bot_type": from_bot_type,
      "can_join_groups": can_join_groups,
      "can_read_all_group_messages": can_read_all_group_messages,
      "from_bot_user_id": from_bot_user_id,
      "expire_date": expire_date,
      "client_username": client_username,
      "client_data": client_data,
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
      "id": 0,
      "created_at": "2022-12-26T05:26:40.500935+00:00",
      "client_user_id": 0,
      "client_id": 0,
      "client_token": "",
      "owner_user_id": 0,
      "client_type": "",
      "from_bot_type": "",
      "can_join_groups": false,
      "can_read_all_group_messages": false,
      "from_bot_user_id": 0,
      "expire_date": 0,
      "client_username": "",
      "client_data": "{}"
    };
  }

  static TgClientData create({
    bool utils_is_print_data = false,
  }) {
    TgClientData tgClientData_data_create = TgClientData();

    if (utils_is_print_data) {
      // print(tgClientData_data_create.toStringPretty());
    }

    return tgClientData_data_create;
  }
}
