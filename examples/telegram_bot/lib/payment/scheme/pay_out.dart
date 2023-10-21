// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class PayOut {
  Map rawData;

  PayOut(this.rawData);

  static Map get defaultData {
    return {
      "@type": "payout",
      "id": "7cdd9113-b688-4b48-8d06-7a9c61519944",
      "status": "pending",
      "external_id": "kwwo",
      "amount": 20000,
      "title": "HEXAMINATE",
      "url":
          "https://payout-staging.xendit.co/web/7cdd9113-b688-4b48-8d06-7a9c61519944",
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

  static PayOut create({
    String? special_type,
    String? id,
    String? status,
    String? external_id,
    int? amount,
    String? title,
    String? url,
  }) {
    Map jsonData = PayOut.defaultData;
    Map jsonCreate = {
      "@type": special_type,
      "id": id,
      "status": status,
      "external_id": external_id,
      "amount": amount,
      "title": title,
      "url": url,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("PayOut ${e.toString()}, ${stack.toString()}");
      }
    });
    return PayOut(jsonData);
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
