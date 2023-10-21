// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "item_transaction_data.g.dart";

@collection
class ItemTransactionData {
  // Id id = Isar.autoIncrement;
  Id id = Isar.autoIncrement;

  int client_user_id = 0;

  int user_id = 0;

  String item_unique_id = "";

  int price = 0;

  ItemTransactionDataReviewMsg review_msg = ItemTransactionDataReviewMsg();

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "client_user_id") {
      client_user_id = value;
    }

    if (key == "user_id") {
      user_id = value;
    }

    if (key == "item_unique_id") {
      item_unique_id = value;
    }

    if (key == "price") {
      price = value;
    }

    if (key == "review_msg") {
      if (value is ItemTransactionDataReviewMsg) {
        review_msg = value;
      } else {
        ItemTransactionDataReviewMsg state_value_procces =
            ItemTransactionDataReviewMsg();
        (value as Map).forEach((key, value) {
          state_value_procces[key] = value;
        });
        review_msg = state_value_procces;
      }
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
      "user_id": user_id,
      "item_unique_id": item_unique_id,
      "price": price,
      "review_msg": review_msg.toJson(),
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
      "user_id": 0,
      "item_unique_id": "",
      "price": 0,
      "review_msg": {
        "date": 1672233175,
        "can_reply_to_message_id": false,
        "can_disable_web_page_preview": false,
        "can_allow_sending_without_reply": true,
        "can_deep_link": false,
        "can_response_callback_data": false,
        "can_send_chat_action": false,
        "acces_msg": "all",
        "request_api": "sendMessage",
        "type": "text",
        "text": "halo",
        "file_unique_id": "97p0cdz1ihmbr1x",
        "from_user_id": 5604530106,
        "from_platform": "telegram"
      }
    };
  }

  static ItemTransactionData create({
    bool utils_is_print_data = false,
  }) {
    ItemTransactionData itemTransactionData_data_create = ItemTransactionData();

    if (utils_is_print_data) {
      // print(itemTransactionData_data_create.toStringPretty());
    }

    return itemTransactionData_data_create;
  }
}

@embedded
class ItemTransactionDataReviewMsg {
  // Id id = Isar.autoIncrement;

  int date = 1672233175;

  bool can_reply_to_message_id = false;

  bool can_disable_web_page_preview = false;

  bool can_allow_sending_without_reply = true;

  bool can_deep_link = false;

  bool can_response_callback_data = false;

  bool can_send_chat_action = false;

  String acces_msg = "all";

  String request_api = "sendMessage";

  String type = "text";

  String text = "halo";

  String file_unique_id = "97p0cdz1ihmbr1x";

  int from_user_id = 5604530106;

  String from_platform = "telegram";

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "date") {
      date = value;
    }

    if (key == "can_reply_to_message_id") {
      can_reply_to_message_id = value;
    }

    if (key == "can_disable_web_page_preview") {
      can_disable_web_page_preview = value;
    }

    if (key == "can_allow_sending_without_reply") {
      can_allow_sending_without_reply = value;
    }

    if (key == "can_deep_link") {
      can_deep_link = value;
    }

    if (key == "can_response_callback_data") {
      can_response_callback_data = value;
    }

    if (key == "can_send_chat_action") {
      can_send_chat_action = value;
    }

    if (key == "acces_msg") {
      acces_msg = value;
    }

    if (key == "request_api") {
      request_api = value;
    }

    if (key == "type") {
      type = value;
    }

    if (key == "text") {
      text = value;
    }

    if (key == "file_unique_id") {
      file_unique_id = value;
    }

    if (key == "from_user_id") {
      from_user_id = value;
    }

    if (key == "from_platform") {
      from_platform = value;
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
      "date": date,
      "can_reply_to_message_id": can_reply_to_message_id,
      "can_disable_web_page_preview": can_disable_web_page_preview,
      "can_allow_sending_without_reply": can_allow_sending_without_reply,
      "can_deep_link": can_deep_link,
      "can_response_callback_data": can_response_callback_data,
      "can_send_chat_action": can_send_chat_action,
      "acces_msg": acces_msg,
      "request_api": request_api,
      "type": type,
      "text": text,
      "file_unique_id": file_unique_id,
      "from_user_id": from_user_id,
      "from_platform": from_platform,
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
      "date": 1672233175,
      "can_reply_to_message_id": false,
      "can_disable_web_page_preview": false,
      "can_allow_sending_without_reply": true,
      "can_deep_link": false,
      "can_response_callback_data": false,
      "can_send_chat_action": false,
      "acces_msg": "all",
      "request_api": "sendMessage",
      "type": "text",
      "text": "halo",
      "file_unique_id": "97p0cdz1ihmbr1x",
      "from_user_id": 5604530106,
      "from_platform": "telegram"
    };
  }

  static ItemTransactionDataReviewMsg create({
    bool utils_is_print_data = false,
  }) {
    ItemTransactionDataReviewMsg itemTransactionDataReviewMsg_data_create =
        ItemTransactionDataReviewMsg();

    if (utils_is_print_data) {
      // print(itemTransactionDataReviewMsg_data_create.toStringPretty());
    }

    return itemTransactionDataReviewMsg_data_create;
  }
}
