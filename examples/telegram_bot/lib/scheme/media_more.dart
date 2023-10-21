// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class MediaMore extends JsonScheme {
  MediaMore(super.rawData);

  static Map get defaultData {
    return {
      "@type": "media_more",
      "all": "free",
      "document": "free",
      "game": "free",
      "contact": "free",
      "poll": "free",
      "location": "free",
      "invoice": "free",
      "bot_inline": "free",
      "forward_date": "free",
      "reply_to_message": "free"
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

  String? get document {
    try {
      if (rawData["document"] is String == false) {
        return null;
      }
      return rawData["document"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get game {
    try {
      if (rawData["game"] is String == false) {
        return null;
      }
      return rawData["game"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get contact {
    try {
      if (rawData["contact"] is String == false) {
        return null;
      }
      return rawData["contact"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get poll {
    try {
      if (rawData["poll"] is String == false) {
        return null;
      }
      return rawData["poll"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get location {
    try {
      if (rawData["location"] is String == false) {
        return null;
      }
      return rawData["location"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get invoice {
    try {
      if (rawData["invoice"] is String == false) {
        return null;
      }
      return rawData["invoice"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bot_inline {
    try {
      if (rawData["bot_inline"] is String == false) {
        return null;
      }
      return rawData["bot_inline"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get forward_date {
    try {
      if (rawData["forward_date"] is String == false) {
        return null;
      }
      return rawData["forward_date"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get reply_to_message {
    try {
      if (rawData["reply_to_message"] is String == false) {
        return null;
      }
      return rawData["reply_to_message"] as String;
    } catch (e) {
      return null;
    }
  }

  static MediaMore create({
    String special_type = "media_more",
    String? all,
    String? document,
    String? game,
    String? contact,
    String? poll,
    String? location,
    String? invoice,
    String? bot_inline,
    String? forward_date,
    String? reply_to_message,
  }) {
    // MediaMore mediaMore = MediaMore({
    Map mediaMore_data_create_json = {
      "@type": special_type,
      "all": all,
      "document": document,
      "game": game,
      "contact": contact,
      "poll": poll,
      "location": location,
      "invoice": invoice,
      "bot_inline": bot_inline,
      "forward_date": forward_date,
      "reply_to_message": reply_to_message,
    };

    mediaMore_data_create_json.removeWhere((key, value) => value == null);
    MediaMore mediaMore_data_create = MediaMore(mediaMore_data_create_json);

    return mediaMore_data_create;
  }
}
