// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ProfilePhoto extends JsonScheme {
  ProfilePhoto(super.rawData);

  static Map get defaultData {
    return {
      "@type": "profile_photo",
      "empty": "",
      "not_empty": "",
      "whitelist": "",
      "blacklist": "",
      "restrict": ""
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

  String? get empty {
    try {
      if (rawData["empty"] is String == false) {
        return null;
      }
      return rawData["empty"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get not_empty {
    try {
      if (rawData["not_empty"] is String == false) {
        return null;
      }
      return rawData["not_empty"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get whitelist {
    try {
      if (rawData["whitelist"] is String == false) {
        return null;
      }
      return rawData["whitelist"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get blacklist {
    try {
      if (rawData["blacklist"] is String == false) {
        return null;
      }
      return rawData["blacklist"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get restrict {
    try {
      if (rawData["restrict"] is String == false) {
        return null;
      }
      return rawData["restrict"] as String;
    } catch (e) {
      return null;
    }
  }

  static ProfilePhoto create({
    String special_type = "profile_photo",
    String? empty,
    String? not_empty,
    String? whitelist,
    String? blacklist,
    String? restrict,
  }) {
    // ProfilePhoto profilePhoto = ProfilePhoto({
    Map profilePhoto_data_create_json = {
      "@type": special_type,
      "empty": empty,
      "not_empty": not_empty,
      "whitelist": whitelist,
      "blacklist": blacklist,
      "restrict": restrict,
    };

    profilePhoto_data_create_json.removeWhere((key, value) => value == null);
    ProfilePhoto profilePhoto_data_create =
        ProfilePhoto(profilePhoto_data_create_json);

    return profilePhoto_data_create;
  }
}
