// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class Items extends JsonScheme {
  Items(super.rawData);

  static Map get defaultData {
    return {
      "name": "Netpriv Harian 7d",
      "description": "",
      "price": 35000,
      "stock": 12,
      "total_sold": 0,
      "unique_id": "abc",
      "@type": "items"
    };
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

  String? get description {
    try {
      if (rawData["description"] is String == false) {
        return null;
      }
      return rawData["description"] as String;
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

  int? get stock {
    try {
      if (rawData["stock"] is int == false) {
        return null;
      }
      return rawData["stock"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get total_sold {
    try {
      if (rawData["total_sold"] is int == false) {
        return null;
      }
      return rawData["total_sold"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get unique_id {
    try {
      if (rawData["unique_id"] is String == false) {
        return null;
      }
      return rawData["unique_id"] as String;
    } catch (e) {
      return null;
    }
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

  static Items create({
    String? name,
    String? description,
    int? price,
    int? stock,
    int? total_sold,
    String? unique_id,
    String special_type = "items",
  }) {
    // Items items = Items({
    Map items_data_create_json = {
      "name": name,
      "description": description,
      "price": price,
      "stock": stock,
      "total_sold": total_sold,
      "unique_id": unique_id,
      "@type": special_type,
    };

    items_data_create_json.removeWhere((key, value) => value == null);
    Items items_data_create = Items(items_data_create_json);

    return items_data_create;
  }
}
