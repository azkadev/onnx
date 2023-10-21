// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class Balance {
  Map rawData;

  Balance(this.rawData);

  static Map get defaultData {
    return {
      "@type": "walletBalance",
      "cash": 1003151591,
      "holding": 1003151591,
      "tax": 1003151591
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

  int? get cash {
    try {
      if (rawData["cash"] is int == false) {
        return null;
      }
      return rawData["cash"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get holding {
    try {
      if (rawData["holding"] is int == false) {
        return null;
      }
      return rawData["holding"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get tax {
    try {
      if (rawData["tax"] is int == false) {
        return null;
      }
      return rawData["tax"] as int;
    } catch (e) {
      return null;
    }
  }

  static Balance create({
    String? special_type,
    int? cash,
    int? holding,
    int? tax,
  }) {
    Map jsonData = Balance.defaultData;
    Map jsonCreate = {
      "@type": special_type,
      "cash": cash,
      "holding": holding,
      "tax": tax,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("Balance ${e.toString()}, ${stack.toString()}");
      }
    });
    return Balance(jsonData);
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
