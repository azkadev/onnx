// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Media extends JsonScheme {
  Media(super.rawData);

  static Map get defaultData {
    return {
      "@type": "media",
      "all": "free",
      "photo": "free",
      "video": "free",
      "media_group_id": "free",
      "animation": "free",
      "voice": "free",
      "audio": "free",
      "sticker": "free",
      "sticker_is_animated": "free",
      "dice": "free",
      "emoji_animate": "free",
      "video_note": "free"
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

  String? get video {
    try {
      if (rawData["video"] is String == false) {
        return null;
      }
      return rawData["video"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get media_group_id {
    try {
      if (rawData["media_group_id"] is String == false) {
        return null;
      }
      return rawData["media_group_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get animation {
    try {
      if (rawData["animation"] is String == false) {
        return null;
      }
      return rawData["animation"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get voice {
    try {
      if (rawData["voice"] is String == false) {
        return null;
      }
      return rawData["voice"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get audio {
    try {
      if (rawData["audio"] is String == false) {
        return null;
      }
      return rawData["audio"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sticker {
    try {
      if (rawData["sticker"] is String == false) {
        return null;
      }
      return rawData["sticker"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sticker_is_animated {
    try {
      if (rawData["sticker_is_animated"] is String == false) {
        return null;
      }
      return rawData["sticker_is_animated"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get dice {
    try {
      if (rawData["dice"] is String == false) {
        return null;
      }
      return rawData["dice"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get emoji_animate {
    try {
      if (rawData["emoji_animate"] is String == false) {
        return null;
      }
      return rawData["emoji_animate"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get video_note {
    try {
      if (rawData["video_note"] is String == false) {
        return null;
      }
      return rawData["video_note"] as String;
    } catch (e) {
      return null;
    }
  }

  static Media create({
    String special_type = "media",
    String? all,
    String? photo,
    String? video,
    String? media_group_id,
    String? animation,
    String? voice,
    String? audio,
    String? sticker,
    String? sticker_is_animated,
    String? dice,
    String? emoji_animate,
    String? video_note,
  }) {
    // Media media = Media({
    Map media_data_create_json = {
      "@type": special_type,
      "all": all,
      "photo": photo,
      "video": video,
      "media_group_id": media_group_id,
      "animation": animation,
      "voice": voice,
      "audio": audio,
      "sticker": sticker,
      "sticker_is_animated": sticker_is_animated,
      "dice": dice,
      "emoji_animate": emoji_animate,
      "video_note": video_note,
    };

    media_data_create_json.removeWhere((key, value) => value == null);
    Media media_data_create = Media(media_data_create_json);

    return media_data_create;
  }
}
