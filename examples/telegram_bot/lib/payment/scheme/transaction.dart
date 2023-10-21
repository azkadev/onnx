// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class Transaction {
  Map rawData;

  Transaction(this.rawData);

  static Map get defaultData {
    return {
      "@type": "transaction",
      "id": "4bc85ad0-126c-456b-8251-d64da02ba37f",
      "from": {
        "@type": "wallet",
        "id": "6336506b42466a7d1942da15",
        "title": "Nami kaze",
        "email": "askoako@gmail.com",
        "balance": {
          "@type": "walletBalance",
          "cash": 1003151591,
          "holding": 1003151591,
          "tax": 1003151591
        }
      },
      "to": {
        "@type": "wallet",
        "id": "63365045af053585249ce409",
        "title": "Nami kaze",
        "email": "askoakso@gmail.com",
        "balance": {
          "@type": "walletBalance",
          "cash": 1003151591,
          "holding": 1003151591,
          "tax": 1003151591
        }
      },
      "amount": 10000,
      "status": "SUCCESSFUL",
      "reference": "samm"
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

  TransactionFrom get from {
    try {
      if (rawData["from"] is Map == false) {
        return TransactionFrom({});
      }
      return TransactionFrom(rawData["from"] as Map);
    } catch (e) {
      return TransactionFrom({});
    }
  }

  TransactionTo get to {
    try {
      if (rawData["to"] is Map == false) {
        return TransactionTo({});
      }
      return TransactionTo(rawData["to"] as Map);
    } catch (e) {
      return TransactionTo({});
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

  String? get reference {
    try {
      if (rawData["reference"] is String == false) {
        return null;
      }
      return rawData["reference"] as String;
    } catch (e) {
      return null;
    }
  }

  static Transaction create({
    String? special_type,
    String? id,
    TransactionFrom? from,
    TransactionTo? to,
    int? amount,
    String? status,
    String? reference,
  }) {
    Map jsonData = Transaction.defaultData;
    Map jsonCreate = {
      "@type": special_type,
      "id": id,
      "from": (from != null) ? from.toJson() : null,
      "to": (to != null) ? to.toJson() : null,
      "amount": amount,
      "status": status,
      "reference": reference,
    };

    jsonCreate.forEach((key, value) {
      try {
        if (value != null) {
          jsonData[key] = value;
        }
      } catch (e, stack) {
        print("Transaction ${e.toString()}, ${stack.toString()}");
      }
    });
    return Transaction(jsonData);
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

class TransactionFrom {
  Map rawData;

  TransactionFrom(this.rawData);

  static Map get defaultData {
    return {
      "@type": "wallet",
      "id": "6336506b42466a7d1942da15",
      "title": "Nami kaze",
      "email": "askoako@gmail.com",
      "balance": {
        "@type": "walletBalance",
        "cash": 1003151591,
        "holding": 1003151591,
        "tax": 1003151591
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

  TransactionFromBalance get balance {
    try {
      if (rawData["balance"] is Map == false) {
        return TransactionFromBalance({});
      }
      return TransactionFromBalance(rawData["balance"] as Map);
    } catch (e) {
      return TransactionFromBalance({});
    }
  }

  static TransactionFrom create({
    String? special_type,
    String? id,
    String? title,
    String? email,
    TransactionFromBalance? balance,
  }) {
    Map jsonData = TransactionFrom.defaultData;
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
        print("TransactionFrom ${e.toString()}, ${stack.toString()}");
      }
    });
    return TransactionFrom(jsonData);
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

class TransactionFromBalance {
  Map rawData;

  TransactionFromBalance(this.rawData);

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

  static TransactionFromBalance create({
    String? special_type,
    int? cash,
    int? holding,
    int? tax,
  }) {
    Map jsonData = TransactionFromBalance.defaultData;
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
        print("TransactionFromBalance ${e.toString()}, ${stack.toString()}");
      }
    });
    return TransactionFromBalance(jsonData);
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

class TransactionTo {
  Map rawData;

  TransactionTo(this.rawData);

  static Map get defaultData {
    return {
      "@type": "wallet",
      "id": "63365045af053585249ce409",
      "title": "Nami kaze",
      "email": "askoakso@gmail.com",
      "balance": {
        "@type": "walletBalance",
        "cash": 1003151591,
        "holding": 1003151591,
        "tax": 1003151591
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

  TransactionToBalance get balance {
    try {
      if (rawData["balance"] is Map == false) {
        return TransactionToBalance({});
      }
      return TransactionToBalance(rawData["balance"] as Map);
    } catch (e) {
      return TransactionToBalance({});
    }
  }

  static TransactionTo create({
    String? special_type,
    String? id,
    String? title,
    String? email,
    TransactionToBalance? balance,
  }) {
    Map jsonData = TransactionTo.defaultData;
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
        print("TransactionTo ${e.toString()}, ${stack.toString()}");
      }
    });
    return TransactionTo(jsonData);
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

class TransactionToBalance {
  Map rawData;

  TransactionToBalance(this.rawData);

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

  static TransactionToBalance create({
    String? special_type,
    int? cash,
    int? holding,
    int? tax,
  }) {
    Map jsonData = TransactionToBalance.defaultData;
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
        print("TransactionToBalance ${e.toString()}, ${stack.toString()}");
      }
    });
    return TransactionToBalance(jsonData);
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
