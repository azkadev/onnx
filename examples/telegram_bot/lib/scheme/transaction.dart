// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "invoice.dart";

class Transaction extends JsonScheme {
  Transaction(super.rawData);

  static Map get defaultData {
    return {
      "@type": "transaction",
      "name": "",
      "price": 0,
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

  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get price {
    try {
      if (rawData["price"] is int == false) {
        return null;
      }
      return rawData["price"] as int;
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

  static Transaction create({
    String special_type = "transaction",
    String? name,
    int? price,
    Invoice? invoice,
  }) {
    // Transaction transaction = Transaction({
    Map transaction_data_create_json = {
      "@type": special_type,
      "name": name,
      "price": price,
      "invoice": (invoice != null) ? invoice.toJson() : null,
    };

    transaction_data_create_json.removeWhere((key, value) => value == null);
    Transaction transaction_data_create =
        Transaction(transaction_data_create_json);

    return transaction_data_create;
  }
}
