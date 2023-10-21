// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class SecretDataLocation extends JsonScheme {
  SecretDataLocation(super.rawData);

  static Map get defaultData {
    return {
      "@type": "SecretDataLocation",
      "latitude": -7.452444,
      "longitude": 109.16865
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

  double? get latitude {
    try {
      if (rawData["latitude"] is double == false) {
        return null;
      }
      return rawData["latitude"] as double;
    } catch (e) {
      return null;
    }
  }

  double? get longitude {
    try {
      if (rawData["longitude"] is double == false) {
        return null;
      }
      return rawData["longitude"] as double;
    } catch (e) {
      return null;
    }
  }

  static SecretDataLocation create({
    String special_type = "SecretDataLocation",
    double? latitude,
    double? longitude,
  }) {
    // SecretDataLocation secretDataLocation = SecretDataLocation({
    Map secretDataLocation_data_create_json = {
      "@type": special_type,
      "latitude": latitude,
      "longitude": longitude,
    };

    secretDataLocation_data_create_json
        .removeWhere((key, value) => value == null);
    SecretDataLocation secretDataLocation_data_create =
        SecretDataLocation(secretDataLocation_data_create_json);

    return secretDataLocation_data_create;
  }
}
