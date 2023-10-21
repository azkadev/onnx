// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class Invoice {
  Map rawData;

  Invoice(this.rawData);

  static Map get defaultData {
    return {
      "@type": "invoice",
      "id": "63deb2d18b9413348cdaaeff",
      "status": "pending",
      "external_id": "kwwo",
      "amount": 20000,
      "title": "HEXAMINATE",
      "profile_picture": {
        "@type": "profilePictureUrl",
        "url":
            "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png"
      },
      "url": "https://checkout-staging.xendit.co/web/63deb2d18b9413348cdaaeff"
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

  InvoiceProfilePicture get profile_picture {
    try {
      if (rawData["profile_picture"] is Map == false) {
        return InvoiceProfilePicture({});
      }
      return InvoiceProfilePicture(rawData["profile_picture"] as Map);
    } catch (e) {
      return InvoiceProfilePicture({});
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
    String? special_type,
    String? id,
    String? status,
    String? external_id,
    int? amount,
    String? title,
    InvoiceProfilePicture? profile_picture,
    String? url,
  }) {
    Map jsonData = Invoice.defaultData;
    Map jsonCreate = {
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

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("Invoice ${e.toString()}, ${stack.toString()}");
      }
    });
    return Invoice(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InvoiceProfilePicture {
  Map rawData;

  InvoiceProfilePicture(this.rawData);

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

  static InvoiceProfilePicture create({
    String? special_type,
    String? url,
  }) {
    Map jsonData = InvoiceProfilePicture.defaultData;
    Map jsonCreate = {
      "@type": special_type,
      "url": url,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("InvoiceProfilePicture ${e.toString()}, ${stack.toString()}");
      }
    });
    return InvoiceProfilePicture(jsonData);
  }

  /// operator map data
  operator [](key) {
    return rawData[key];
  }

  /// operator map data
  void operator []=(key, value) {
    rawData[key] = value;
  }

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}
