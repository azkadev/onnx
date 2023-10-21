// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "ads_repeat_message.dart";
import "ads_message.dart";

class AdsData extends JsonScheme {
  AdsData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "AdsData",
      "ads_repeat_msgs": [
        {
          "@type": "AdsRepeatMessage",
          "chat_id": 0,
          "user_id": 1,
          "expire_date": 0,
          "is_pinned": false,
          "is_send": false,
          "is_notif": false,
          "message_id": 0,
          "msg": {
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
      "ads_msgs": [
        {
          "@type": "AdsMessage",
          "chat_id": 0,
          "user_id": 1,
          "expire_date": 0,
          "is_send": false,
          "is_notif": false,
          "is_auto_delete": false,
          "msg": {
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
      ]
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

  List<AdsRepeatMessage> get ads_repeat_msgs {
    try {
      if (rawData["ads_repeat_msgs"] is List == false) {
        return [];
      }
      return (rawData["ads_repeat_msgs"] as List)
          .map((e) => AdsRepeatMessage(e as Map))
          .toList()
          .cast<AdsRepeatMessage>();
    } catch (e) {
      return [];
    }
  }

  List<AdsMessage> get ads_msgs {
    try {
      if (rawData["ads_msgs"] is List == false) {
        return [];
      }
      return (rawData["ads_msgs"] as List)
          .map((e) => AdsMessage(e as Map))
          .toList()
          .cast<AdsMessage>();
    } catch (e) {
      return [];
    }
  }

  static AdsData create({
    String special_type = "AdsData",
    List<AdsRepeatMessage>? ads_repeat_msgs,
    List<AdsMessage>? ads_msgs,
  }) {
    // AdsData adsData = AdsData({
    Map adsData_data_create_json = {
      "@type": special_type,
      "ads_repeat_msgs":
          (ads_repeat_msgs != null) ? ads_repeat_msgs.toJson() : null,
      "ads_msgs": (ads_msgs != null) ? ads_msgs.toJson() : null,
    };

    adsData_data_create_json.removeWhere((key, value) => value == null);
    AdsData adsData_data_create = AdsData(adsData_data_create_json);

    return adsData_data_create;
  }
}
