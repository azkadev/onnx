// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "review_msg.dart";

class ItemTransactionData extends JsonScheme {
  ItemTransactionData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "ItemTransactionData",
      "client_user_id": 0,
      "user_id": 0,
      "item_unique_id": "",
      "price": 0,
      "review_msg": {
        "@type": "review_msg",
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

  int? get user_id {
    try {
      if (rawData["user_id"] is int == false) {
        return null;
      }
      return rawData["user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get item_unique_id {
    try {
      if (rawData["item_unique_id"] is String == false) {
        return null;
      }
      return rawData["item_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get price {
    try {
      if (rawData["price"] is int == false) {
        return null;
      }
      return rawData["price"] as int;
    } catch (e) {
      return null;
    }
  }

  ReviewMsg get review_msg {
    try {
      if (rawData["review_msg"] is Map == false) {
        return ReviewMsg({});
      }
      return ReviewMsg(rawData["review_msg"] as Map);
    } catch (e) {
      return ReviewMsg({});
    }
  }

  static ItemTransactionData create({
    String special_type = "ItemTransactionData",
    int? client_user_id,
    int? user_id,
    String? item_unique_id,
    int? price,
    ReviewMsg? review_msg,
  }) {
    // ItemTransactionData itemTransactionData = ItemTransactionData({
    Map itemTransactionData_data_create_json = {
      "@type": special_type,
      "client_user_id": client_user_id,
      "user_id": user_id,
      "item_unique_id": item_unique_id,
      "price": price,
      "review_msg": (review_msg != null) ? review_msg.toJson() : null,
    };

    itemTransactionData_data_create_json
        .removeWhere((key, value) => value == null);
    ItemTransactionData itemTransactionData_data_create =
        ItemTransactionData(itemTransactionData_data_create_json);

    return itemTransactionData_data_create;
  }
}
