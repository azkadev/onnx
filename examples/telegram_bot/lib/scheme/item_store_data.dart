// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "item_store_data.dart";
import "on_payed_msg.dart";

class ItemStoreData extends JsonScheme {
  ItemStoreData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "ItemStoreData",
      "client_user_id": 0,
      "item_unique_id": "",
      "name": "",
      "price": 0,
      "description": "",
      "type": "",
      "items": [
        {
          "@type": "ItemStoreData",
          "client_user_id": 0,
          "item_unique_id": "",
          "name": "",
          "price": 0,
          "description": "",
          "type": "",
          "on_payed_msg": {
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
        }
      ],
      "on_payed_msg": {
        "@type": "on_payed_msg",
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

  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
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

  String? get description {
    try {
      if (rawData["description"] is String == false) {
        return null;
      }
      return rawData["description"] as String;
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

  List<ItemStoreData> get items {
    try {
      if (rawData["items"] is List == false) {
        return [];
      }
      return (rawData["items"] as List)
          .map((e) => ItemStoreData(e as Map))
          .toList()
          .cast<ItemStoreData>();
    } catch (e) {
      return [];
    }
  }

  OnPayedMsg get on_payed_msg {
    try {
      if (rawData["on_payed_msg"] is Map == false) {
        return OnPayedMsg({});
      }
      return OnPayedMsg(rawData["on_payed_msg"] as Map);
    } catch (e) {
      return OnPayedMsg({});
    }
  }

  static ItemStoreData create({
    String special_type = "ItemStoreData",
    int? client_user_id,
    String? item_unique_id,
    String? name,
    int? price,
    String? description,
    String? type,
    List<ItemStoreData>? items,
    OnPayedMsg? on_payed_msg,
  }) {
    // ItemStoreData itemStoreData = ItemStoreData({
    Map itemStoreData_data_create_json = {
      "@type": special_type,
      "client_user_id": client_user_id,
      "item_unique_id": item_unique_id,
      "name": name,
      "price": price,
      "description": description,
      "type": type,
      "items": (items != null) ? items.toJson() : null,
      "on_payed_msg": (on_payed_msg != null) ? on_payed_msg.toJson() : null,
    };

    itemStoreData_data_create_json.removeWhere((key, value) => value == null);
    ItemStoreData itemStoreData_data_create =
        ItemStoreData(itemStoreData_data_create_json);

    return itemStoreData_data_create;
  }
}
