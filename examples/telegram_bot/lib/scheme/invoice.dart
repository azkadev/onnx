// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "profile_picture_url.dart";

class Invoice extends JsonScheme {
  Invoice(super.rawData);

  static Map get defaultData {
    return {
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

  String? get id {
    try {
      if (rawData["id"] is String == false) {
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get status {
    try {
      if (rawData["status"] is String == false) {
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get external_id {
    try {
      if (rawData["external_id"] is String == false) {
        return null;
      }
      return rawData["external_id"] as String;
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

  String? get title {
    try {
      if (rawData["title"] is String == false) {
        return null;
      }
      return rawData["title"] as String;
    } catch (e) {
      return null;
    }
  }

  ProfilePictureUrl get profile_picture {
    try {
      if (rawData["profile_picture"] is Map == false) {
        return ProfilePictureUrl({});
      }
      return ProfilePictureUrl(rawData["profile_picture"] as Map);
    } catch (e) {
      return ProfilePictureUrl({});
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

  static Invoice create({
    String special_type = "invoice",
    String? id,
    String? status,
    String? external_id,
    int? amount,
    String? title,
    ProfilePictureUrl? profile_picture,
    String? url,
  }) {
    // Invoice invoice = Invoice({
    Map invoice_data_create_json = {
      "@type": special_type,
      "id": id,
      "status": status,
      "external_id": external_id,
      "amount": amount,
      "title": title,
      "profile_picture":
          (profile_picture != null) ? profile_picture.toJson() : null,
      "url": url,
    };

    invoice_data_create_json.removeWhere((key, value) => value == null);
    Invoice invoice_data_create = Invoice(invoice_data_create_json);

    return invoice_data_create;
  }
}
