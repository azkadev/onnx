// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ServiceMessage extends JsonScheme {
  ServiceMessage(super.rawData);

  static Map get defaultData {
    return {
      "@type": "service_message",
      "all": "free",
      "new_chat_members": "free",
      "left_chat_member": "free",
      "new_chat_title": "free",
      "new_chat_photo": "free",
      "delete_chat_photo": "free",
      "group_chat_created": "free",
      "supergroup_chat_created": "free",
      "channel_chat_created": "free",
      "message_auto_delete_timer_changed": "free",
      "successful_payment": "free",
      "voice_chat_scheduled": "free",
      "voice_chat_started": "free",
      "voice_chat_ended": "free",
      "voice_chat_participants_invited": "free"
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

  String? get all {
    try {
      if (rawData["all"] is String == false) {
        return null;
      }
      return rawData["all"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get new_chat_members {
    try {
      if (rawData["new_chat_members"] is String == false) {
        return null;
      }
      return rawData["new_chat_members"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get left_chat_member {
    try {
      if (rawData["left_chat_member"] is String == false) {
        return null;
      }
      return rawData["left_chat_member"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get new_chat_title {
    try {
      if (rawData["new_chat_title"] is String == false) {
        return null;
      }
      return rawData["new_chat_title"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get new_chat_photo {
    try {
      if (rawData["new_chat_photo"] is String == false) {
        return null;
      }
      return rawData["new_chat_photo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get delete_chat_photo {
    try {
      if (rawData["delete_chat_photo"] is String == false) {
        return null;
      }
      return rawData["delete_chat_photo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get group_chat_created {
    try {
      if (rawData["group_chat_created"] is String == false) {
        return null;
      }
      return rawData["group_chat_created"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get supergroup_chat_created {
    try {
      if (rawData["supergroup_chat_created"] is String == false) {
        return null;
      }
      return rawData["supergroup_chat_created"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get channel_chat_created {
    try {
      if (rawData["channel_chat_created"] is String == false) {
        return null;
      }
      return rawData["channel_chat_created"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get message_auto_delete_timer_changed {
    try {
      if (rawData["message_auto_delete_timer_changed"] is String == false) {
        return null;
      }
      return rawData["message_auto_delete_timer_changed"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get successful_payment {
    try {
      if (rawData["successful_payment"] is String == false) {
        return null;
      }
      return rawData["successful_payment"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get voice_chat_scheduled {
    try {
      if (rawData["voice_chat_scheduled"] is String == false) {
        return null;
      }
      return rawData["voice_chat_scheduled"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get voice_chat_started {
    try {
      if (rawData["voice_chat_started"] is String == false) {
        return null;
      }
      return rawData["voice_chat_started"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get voice_chat_ended {
    try {
      if (rawData["voice_chat_ended"] is String == false) {
        return null;
      }
      return rawData["voice_chat_ended"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get voice_chat_participants_invited {
    try {
      if (rawData["voice_chat_participants_invited"] is String == false) {
        return null;
      }
      return rawData["voice_chat_participants_invited"] as String;
    } catch (e) {
      return null;
    }
  }

  static ServiceMessage create({
    String special_type = "service_message",
    String? all,
    String? new_chat_members,
    String? left_chat_member,
    String? new_chat_title,
    String? new_chat_photo,
    String? delete_chat_photo,
    String? group_chat_created,
    String? supergroup_chat_created,
    String? channel_chat_created,
    String? message_auto_delete_timer_changed,
    String? successful_payment,
    String? voice_chat_scheduled,
    String? voice_chat_started,
    String? voice_chat_ended,
    String? voice_chat_participants_invited,
  }) {
    // ServiceMessage serviceMessage = ServiceMessage({
    Map serviceMessage_data_create_json = {
      "@type": special_type,
      "all": all,
      "new_chat_members": new_chat_members,
      "left_chat_member": left_chat_member,
      "new_chat_title": new_chat_title,
      "new_chat_photo": new_chat_photo,
      "delete_chat_photo": delete_chat_photo,
      "group_chat_created": group_chat_created,
      "supergroup_chat_created": supergroup_chat_created,
      "channel_chat_created": channel_chat_created,
      "message_auto_delete_timer_changed": message_auto_delete_timer_changed,
      "successful_payment": successful_payment,
      "voice_chat_scheduled": voice_chat_scheduled,
      "voice_chat_started": voice_chat_started,
      "voice_chat_ended": voice_chat_ended,
      "voice_chat_participants_invited": voice_chat_participants_invited,
    };

    serviceMessage_data_create_json.removeWhere((key, value) => value == null);
    ServiceMessage serviceMessage_data_create =
        ServiceMessage(serviceMessage_data_create_json);

    return serviceMessage_data_create;
  }
}
