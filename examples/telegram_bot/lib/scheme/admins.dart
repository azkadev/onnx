// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "user.dart";

class Admins extends JsonScheme {
  Admins(super.rawData);

  static Map get defaultData {
    return {
      "user": {
        "@type": "user",
        "id": 5604530106,
        "is_bot": false,
        "first_name": "Kazekage",
        "username": "sadssfsmfm",
        "language_code": "en"
      },
      "status": "creator",
      "can_be_edited": false,
      "can_manage_chat": true,
      "can_change_info": true,
      "can_delete_messages": true,
      "can_invite_users": true,
      "can_restrict_members": true,
      "can_pin_messages": true,
      "can_promote_members": true,
      "can_manage_video_chats": true,
      "is_anonymous": false,
      "can_manage_voice_chats": true,
      "@type": "admins"
    };
  }

  User get user {
    try {
      if (rawData["user"] is Map == false) {
        return User({});
      }
      return User(rawData["user"] as Map);
    } catch (e) {
      return User({});
    }
  }

  String? get status {
    try {
      if (rawData["status"] is String == false) {
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_edited {
    try {
      if (rawData["can_be_edited"] is bool == false) {
        return null;
      }
      return rawData["can_be_edited"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_manage_chat {
    try {
      if (rawData["can_manage_chat"] is bool == false) {
        return null;
      }
      return rawData["can_manage_chat"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_change_info {
    try {
      if (rawData["can_change_info"] is bool == false) {
        return null;
      }
      return rawData["can_change_info"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_delete_messages {
    try {
      if (rawData["can_delete_messages"] is bool == false) {
        return null;
      }
      return rawData["can_delete_messages"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_invite_users {
    try {
      if (rawData["can_invite_users"] is bool == false) {
        return null;
      }
      return rawData["can_invite_users"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_restrict_members {
    try {
      if (rawData["can_restrict_members"] is bool == false) {
        return null;
      }
      return rawData["can_restrict_members"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_pin_messages {
    try {
      if (rawData["can_pin_messages"] is bool == false) {
        return null;
      }
      return rawData["can_pin_messages"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_promote_members {
    try {
      if (rawData["can_promote_members"] is bool == false) {
        return null;
      }
      return rawData["can_promote_members"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_manage_video_chats {
    try {
      if (rawData["can_manage_video_chats"] is bool == false) {
        return null;
      }
      return rawData["can_manage_video_chats"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_anonymous {
    try {
      if (rawData["is_anonymous"] is bool == false) {
        return null;
      }
      return rawData["is_anonymous"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_manage_voice_chats {
    try {
      if (rawData["can_manage_voice_chats"] is bool == false) {
        return null;
      }
      return rawData["can_manage_voice_chats"] as bool;
    } catch (e) {
      return null;
    }
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

  static Admins create({
    User? user,
    String? status,
    bool? can_be_edited,
    bool? can_manage_chat,
    bool? can_change_info,
    bool? can_delete_messages,
    bool? can_invite_users,
    bool? can_restrict_members,
    bool? can_pin_messages,
    bool? can_promote_members,
    bool? can_manage_video_chats,
    bool? is_anonymous,
    bool? can_manage_voice_chats,
    String special_type = "admins",
  }) {
    // Admins admins = Admins({
    Map admins_data_create_json = {
      "user": (user != null) ? user.toJson() : null,
      "status": status,
      "can_be_edited": can_be_edited,
      "can_manage_chat": can_manage_chat,
      "can_change_info": can_change_info,
      "can_delete_messages": can_delete_messages,
      "can_invite_users": can_invite_users,
      "can_restrict_members": can_restrict_members,
      "can_pin_messages": can_pin_messages,
      "can_promote_members": can_promote_members,
      "can_manage_video_chats": can_manage_video_chats,
      "is_anonymous": is_anonymous,
      "can_manage_voice_chats": can_manage_voice_chats,
      "@type": special_type,
    };

    admins_data_create_json.removeWhere((key, value) => value == null);
    Admins admins_data_create = Admins(admins_data_create_json);

    return admins_data_create;
  }
}
