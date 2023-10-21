// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class Account {
  Map rawData;

  Account(this.rawData);

  static Map get defaultData {
    return {
      "@type": "wallet",
      "id": "63deb392e54e128734ff5523",
      "title": "asasa",
      "email": "insanesassaszka@gmail.com",
      "balance": {
        "@type": "walletBalance",
        "cash": 1003151591,
        "holding": 1003151591,
        "tax": 1003151591,
      },
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

  String? get email {
    try {
      if (rawData["email"] is String == false) {
        return null;
      }
      return rawData["email"] as String;
    } catch (e) {
      return null;
    }
  }

  AccountBalance get balance {
    try {
      if (rawData["balance"] is Map == false) {
        return AccountBalance({});
      }
      return AccountBalance(rawData["balance"] as Map);
    } catch (e) {
      return AccountBalance({});
    }
  }

  static Account create({
    String? special_type,
    String? id,
    String? title,
    String? email,
    AccountBalance? balance,
  }) {
    Map jsonData = Account.defaultData;
    Map jsonCreate = {
      "@type": special_type,
      "id": id,
      "title": title,
      "email": email,
      "balance": (balance != null) ? balance.toJson() : null,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("Account ${e.toString()}, ${stack.toString()}");
      }
    });
    return Account(jsonData);
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

class AccountBalance {
  Map rawData;

  AccountBalance(this.rawData);

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

  static AccountBalance create({
    String? special_type,
    int? cash,
    int? holding,
    int? tax,
  }) {
    Map jsonData = AccountBalance.defaultData;
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
        print("AccountBalance ${e.toString()}, ${stack.toString()}");
      }
    });
    return AccountBalance(jsonData);
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
