// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "invoice.dart";

class Data extends JsonScheme {
  Data(super.rawData);

  static Map get defaultData {
    return {
      "@type": "data",
      "month": 0,
      "token_bot": "",
      "username": "",
      "password": "",
      "token": "",
      "target_user_id": 0,
      "amount": 0,
      "user_id": 0,
      "upgrade_plan_type": "ultra",
      "invoice": {
        "@type": "invoice",
        "id": "6400761f118264bbc49c871b",
        "status": "pending",
        "external_id": "oaksoaks",
        "amount": 50000,
        "title": "HEXAMINATE",
        "profile_picture": {
          "@type": "profilePictureUrl",
          "url":
              "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png"
        },
        "url": "https://checkout.xendit.co/web/6400761f118264bbc49c871b"
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

  int? get month {
    try {
      if (rawData["month"] is int == false) {
        return null;
      }
      return rawData["month"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get token_bot {
    try {
      if (rawData["token_bot"] is String == false) {
        return null;
      }
      return rawData["token_bot"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get username {
    try {
      if (rawData["username"] is String == false) {
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get password {
    try {
      if (rawData["password"] is String == false) {
        return null;
      }
      return rawData["password"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get token {
    try {
      if (rawData["token"] is String == false) {
        return null;
      }
      return rawData["token"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get target_user_id {
    try {
      if (rawData["target_user_id"] is int == false) {
        return null;
      }
      return rawData["target_user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get amount {
    try {
      if (rawData["amount"] is int == false) {
        return null;
      }
      return rawData["amount"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      if (rawData["user_id"] is int == false) {
        return null;
      }
      return rawData["user_id"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get upgrade_plan_type {
    try {
      if (rawData["upgrade_plan_type"] is String == false) {
        return null;
      }
      return rawData["upgrade_plan_type"] as String;
    } catch (e) {
      return null;
    }
  }

  Invoice get invoice {
    try {
      if (rawData["invoice"] is Map == false) {
        return Invoice({});
      }
      return Invoice(rawData["invoice"] as Map);
    } catch (e) {
      return Invoice({});
    }
  }

  static Data create({
    String special_type = "data",
    int? month,
    String? token_bot,
    String? username,
    String? password,
    String? token,
    int? target_user_id,
    int? amount,
    int? user_id,
    String? upgrade_plan_type,
    Invoice? invoice,
  }) {
    // Data data = Data({
    Map data_data_create_json = {
      "@type": special_type,
      "month": month,
      "token_bot": token_bot,
      "username": username,
      "password": password,
      "token": token,
      "target_user_id": target_user_id,
      "amount": amount,
      "user_id": user_id,
      "upgrade_plan_type": upgrade_plan_type,
      "invoice": (invoice != null) ? invoice.toJson() : null,
    };

    data_data_create_json.removeWhere((key, value) => value == null);
    Data data_data_create = Data(data_data_create_json);

    return data_data_create;
  }
}
