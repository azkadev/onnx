// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class FirstName extends JsonScheme {
  FirstName(super.rawData);

  static Map get defaultData {
    return {
      "@type": "first_name",
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

  static FirstName create({
    String special_type = "first_name",
    String? empty,
    String? not_empty,
    String? whitelist,
    String? blacklist,
    String? restrict,
  }) {
    // FirstName firstName = FirstName({
    Map firstName_data_create_json = {
      "@type": special_type,
      "empty": empty,
      "not_empty": not_empty,
      "whitelist": whitelist,
      "blacklist": blacklist,
      "restrict": restrict,
    };

    firstName_data_create_json.removeWhere((key, value) => value == null);
    FirstName firstName_data_create = FirstName(firstName_data_create_json);

    return firstName_data_create;
  }
}
