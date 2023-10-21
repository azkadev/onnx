// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class AdsGatewayPm extends JsonScheme {
  AdsGatewayPm(super.rawData);

  static Map get defaultData {
    return {"@type": "adsGatewayPm", "data": ""};
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

  String? get data {
    try {
      if (rawData["data"] is String == false) {
        return null;
      }
      return rawData["data"] as String;
    } catch (e) {
      return null;
    }
  }

  static AdsGatewayPm create({
    String special_type = "adsGatewayPm",
    String? data,
  }) {
    // AdsGatewayPm adsGatewayPm = AdsGatewayPm({
    Map adsGatewayPm_data_create_json = {
      "@type": special_type,
      "data": data,
    };

    adsGatewayPm_data_create_json.removeWhere((key, value) => value == null);
    AdsGatewayPm adsGatewayPm_data_create =
        AdsGatewayPm(adsGatewayPm_data_create_json);

    return adsGatewayPm_data_create;
  }
}
