// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class WalletType extends JsonScheme {
  WalletType(super.rawData);

  static Map get defaultData {
    return {
      "@type": "walletType",
      "type": "xendit",
      "api_key": "",
      "user_id": ""
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

  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get api_key {
    try {
      if (rawData["api_key"] is String == false) {
        return null;
      }
      return rawData["api_key"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get user_id {
    try {
      if (rawData["user_id"] is String == false) {
        return null;
      }
      return rawData["user_id"] as String;
    } catch (e) {
      return null;
    }
  }

  static WalletType create({
    String special_type = "walletType",
    String? type,
    String? api_key,
    String? user_id,
  }) {
    // WalletType walletType = WalletType({
    Map walletType_data_create_json = {
      "@type": special_type,
      "type": type,
      "api_key": api_key,
      "user_id": user_id,
    };

    walletType_data_create_json.removeWhere((key, value) => value == null);
    WalletType walletType_data_create = WalletType(walletType_data_create_json);

    return walletType_data_create;
  }
}
