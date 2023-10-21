// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "first_name.dart";
import "last_name.dart";
import "username.dart";
import "profile_photo.dart";
import "bio.dart";
import "sender_chat.dart";

class CheckUser extends JsonScheme {
  CheckUser(super.rawData);

  static Map get defaultData {
    return {
      "@type": "check_user",
      "first_name": {
        "@type": "first_name",
        "empty": "",
        "not_empty": "",
        "whitelist": "",
        "blacklist": "",
        "restrict": ""
      },
      "last_name": {
        "@type": "last_name",
        "empty": "",
        "not_empty": "",
        "whitelist": "",
        "blacklist": "",
        "restrict": ""
      },
      "username": {
        "@type": "username",
        "empty": "",
        "not_empty": "",
        "whitelist": "",
        "blacklist": "",
        "restrict": ""
      },
      "profile_photo": {
        "@type": "profile_photo",
        "empty": "",
        "not_empty": "",
        "whitelist": "",
        "blacklist": "",
        "restrict": ""
      },
      "bio": {
        "@type": "bio",
        "empty": "",
        "not_empty": "",
        "whitelist": "",
        "blacklist": "",
        "restrict": ""
      },
      "sender_chat": {
        "@type": "sender_chat",
        "empty": "",
        "not_empty": "",
        "whitelist_chat_ids": [],
        "blacklist_chat_ids": [],
        "restrict": ""
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

  FirstName get first_name {
    try {
      if (rawData["first_name"] is Map == false) {
        return FirstName({});
      }
      return FirstName(rawData["first_name"] as Map);
    } catch (e) {
      return FirstName({});
    }
  }

  LastName get last_name {
    try {
      if (rawData["last_name"] is Map == false) {
        return LastName({});
      }
      return LastName(rawData["last_name"] as Map);
    } catch (e) {
      return LastName({});
    }
  }

  Username get username {
    try {
      if (rawData["username"] is Map == false) {
        return Username({});
      }
      return Username(rawData["username"] as Map);
    } catch (e) {
      return Username({});
    }
  }

  ProfilePhoto get profile_photo {
    try {
      if (rawData["profile_photo"] is Map == false) {
        return ProfilePhoto({});
      }
      return ProfilePhoto(rawData["profile_photo"] as Map);
    } catch (e) {
      return ProfilePhoto({});
    }
  }

  Bio get bio {
    try {
      if (rawData["bio"] is Map == false) {
        return Bio({});
      }
      return Bio(rawData["bio"] as Map);
    } catch (e) {
      return Bio({});
    }
  }

  SenderChat get sender_chat {
    try {
      if (rawData["sender_chat"] is Map == false) {
        return SenderChat({});
      }
      return SenderChat(rawData["sender_chat"] as Map);
    } catch (e) {
      return SenderChat({});
    }
  }

  static CheckUser create({
    String special_type = "check_user",
    FirstName? first_name,
    LastName? last_name,
    Username? username,
    ProfilePhoto? profile_photo,
    Bio? bio,
    SenderChat? sender_chat,
  }) {
    // CheckUser checkUser = CheckUser({
    Map checkUser_data_create_json = {
      "@type": special_type,
      "first_name": (first_name != null) ? first_name.toJson() : null,
      "last_name": (last_name != null) ? last_name.toJson() : null,
      "username": (username != null) ? username.toJson() : null,
      "profile_photo": (profile_photo != null) ? profile_photo.toJson() : null,
      "bio": (bio != null) ? bio.toJson() : null,
      "sender_chat": (sender_chat != null) ? sender_chat.toJson() : null,
    };

    checkUser_data_create_json.removeWhere((key, value) => value == null);
    CheckUser checkUser_data_create = CheckUser(checkUser_data_create_json);

    return checkUser_data_create;
  }
}
