// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "reply_markup.dart";

class ProductTelegramMessage extends JsonScheme {
  ProductTelegramMessage(super.rawData);

  static Map get defaultData {
    return {
      "@type": "ProductTelegramMessage",
      "date": 1672233175,
      "can_reply_to_message_id": false,
      "can_disable_web_page_preview": false,
      "can_allow_sending_without_reply": true,
      "can_deep_link": false,
      "can_response_callback_data": false,
      "can_send_chat_action": false,
      "protect_content": true,
      "acces_msg": "all",
      "request_api": "sendMessage",
      "type": "text",
      "text": "halo",
      "photo": "",
      "file_unique_id": "97p0cdz1ihmbr1x",
      "from_user_id": 5604530106,
      "from_platform": "telegram",
      "reply_markup": {
        "@type": "ReplyMarkup",
        "inline_keyboard": [
          [
            {"text": "Channel", "url": "https://t.me/roleplayeruniverse"}
          ]
        ]
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

  int? get date {
    try {
      if (rawData["date"] is int == false) {
        return null;
      }
      return rawData["date"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get can_reply_to_message_id {
    try {
      if (rawData["can_reply_to_message_id"] is bool == false) {
        return null;
      }
      return rawData["can_reply_to_message_id"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_disable_web_page_preview {
    try {
      if (rawData["can_disable_web_page_preview"] is bool == false) {
        return null;
      }
      return rawData["can_disable_web_page_preview"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_allow_sending_without_reply {
    try {
      if (rawData["can_allow_sending_without_reply"] is bool == false) {
        return null;
      }
      return rawData["can_allow_sending_without_reply"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_deep_link {
    try {
      if (rawData["can_deep_link"] is bool == false) {
        return null;
      }
      return rawData["can_deep_link"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_response_callback_data {
    try {
      if (rawData["can_response_callback_data"] is bool == false) {
        return null;
      }
      return rawData["can_response_callback_data"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_send_chat_action {
    try {
      if (rawData["can_send_chat_action"] is bool == false) {
        return null;
      }
      return rawData["can_send_chat_action"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get protect_content {
    try {
      if (rawData["protect_content"] is bool == false) {
        return null;
      }
      return rawData["protect_content"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get acces_msg {
    try {
      if (rawData["acces_msg"] is String == false) {
        return null;
      }
      return rawData["acces_msg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get request_api {
    try {
      if (rawData["request_api"] is String == false) {
        return null;
      }
      return rawData["request_api"] as String;
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

  String? get text {
    try {
      if (rawData["text"] is String == false) {
        return null;
      }
      return rawData["text"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get photo {
    try {
      if (rawData["photo"] is String == false) {
        return null;
      }
      return rawData["photo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get file_unique_id {
    try {
      if (rawData["file_unique_id"] is String == false) {
        return null;
      }
      return rawData["file_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get from_user_id {
    try {
      if (rawData["from_user_id"] is int == false) {
        return null;
      }
      return rawData["from_user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get from_platform {
    try {
      if (rawData["from_platform"] is String == false) {
        return null;
      }
      return rawData["from_platform"] as String;
    } catch (e) {
      return null;
    }
  }

  ReplyMarkup get reply_markup {
    try {
      if (rawData["reply_markup"] is Map == false) {
        return ReplyMarkup({});
      }
      return ReplyMarkup(rawData["reply_markup"] as Map);
    } catch (e) {
      return ReplyMarkup({});
    }
  }

  static ProductTelegramMessage create({
    String special_type = "ProductTelegramMessage",
    int? date,
    bool? can_reply_to_message_id,
    bool? can_disable_web_page_preview,
    bool? can_allow_sending_without_reply,
    bool? can_deep_link,
    bool? can_response_callback_data,
    bool? can_send_chat_action,
    bool? protect_content,
    String? acces_msg,
    String? request_api,
    String? type,
    String? text,
    String? photo,
    String? file_unique_id,
    int? from_user_id,
    String? from_platform,
    ReplyMarkup? reply_markup,
  }) {
    // ProductTelegramMessage productTelegramMessage = ProductTelegramMessage({
    Map productTelegramMessage_data_create_json = {
      "@type": special_type,
      "date": date,
      "can_reply_to_message_id": can_reply_to_message_id,
      "can_disable_web_page_preview": can_disable_web_page_preview,
      "can_allow_sending_without_reply": can_allow_sending_without_reply,
      "can_deep_link": can_deep_link,
      "can_response_callback_data": can_response_callback_data,
      "can_send_chat_action": can_send_chat_action,
      "protect_content": protect_content,
      "acces_msg": acces_msg,
      "request_api": request_api,
      "type": type,
      "text": text,
      "photo": photo,
      "file_unique_id": file_unique_id,
      "from_user_id": from_user_id,
      "from_platform": from_platform,
      "reply_markup": (reply_markup != null) ? reply_markup.toJson() : null,
    };

    productTelegramMessage_data_create_json
        .removeWhere((key, value) => value == null);
    ProductTelegramMessage productTelegramMessage_data_create =
        ProductTelegramMessage(productTelegramMessage_data_create_json);

    return productTelegramMessage_data_create;
  }
}
