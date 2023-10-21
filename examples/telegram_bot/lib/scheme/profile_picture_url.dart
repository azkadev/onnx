// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class ProfilePictureUrl extends JsonScheme {
  ProfilePictureUrl(super.rawData);

  static Map get defaultData {
    return {
      "@type": "profilePictureUrl",
      "url":
          "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png"
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

  String? get url {
    try {
      if (rawData["url"] is String == false) {
        return null;
      }
      return rawData["url"] as String;
    } catch (e) {
      return null;
    }
  }

  static ProfilePictureUrl create({
    String special_type = "profilePictureUrl",
    String? url,
  }) {
    // ProfilePictureUrl profilePictureUrl = ProfilePictureUrl({
    Map profilePictureUrl_data_create_json = {
      "@type": special_type,
      "url": url,
    };

    profilePictureUrl_data_create_json
        .removeWhere((key, value) => value == null);
    ProfilePictureUrl profilePictureUrl_data_create =
        ProfilePictureUrl(profilePictureUrl_data_create_json);

    return profilePictureUrl_data_create;
  }
}
