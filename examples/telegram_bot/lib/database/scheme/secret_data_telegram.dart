// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "secret_data_telegram.g.dart";

@collection
class SecretDataTelegram {
  // Id id = Isar.autoIncrement;
  Id isar_data_id = Isar.autoIncrement;
  // Id id = Isar.autoIncrement;

  int user_id = 0;

  String phone_number = "";

  int date = 0;

  SecretDataTelegramLocation location = SecretDataTelegramLocation();

  List<SecretDataTelegramHistorys> historys = [];

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "user_id") {
      user_id = value;
    }

    if (key == "phone_number") {
      phone_number = value;
    }

    if (key == "date") {
      date = value;
    }

    if (key == "location") {
      if (value is SecretDataTelegramLocation) {
        location = value;
      } else {
        SecretDataTelegramLocation state_value_procces =
            SecretDataTelegramLocation();
        (value as Map).forEach((key, value) {
          state_value_procces[key] = value;
        });
        location = state_value_procces;
      }
    }

    if (key == "historys") {
      if (value is List<SecretDataTelegramHistorys>) {
        historys = value;
      } else {
        historys = (value as List)
            .map((state_data_procces) {
              SecretDataTelegramHistorys state_value_procces =
                  SecretDataTelegramHistorys();
              (state_data_procces as Map).forEach((key, value) {
                state_value_procces[key] = value;
              });
              return state_value_procces;
            })
            .toList()
            .cast<SecretDataTelegramHistorys>();
      }
    }
  }

  /// return original data json
  Map utils_remove_values_null() {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      if (value == null) {
        rawData.remove(key);
      }
    });
    return rawData;
  }

  /// return original data json
  Map utils_remove_by_values(List values) {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      for (var element in values) {
        if (value == element) {
          rawData.remove(key);
        }
      }
    });

    return rawData;
  }

  /// return original data json
  Map utils_remove_by_keys(List keys) {
    Map rawData = toJson();
    for (var element in keys) {
      rawData.remove(element);
    }
    return rawData;
  }

  /// return original data json
  Map utils_filter_by_keys(List keys) {
    Map rawData = toJson();
    Map jsonData = {};
    for (var key in keys) {
      jsonData[key] = rawData[key];
    }
    return jsonData;
  }

  /// return original data json
  Map toMap() {
    return toJson();
  }

  /// return original data json
  Map toJson() {
    return {
      "user_id": user_id,
      "phone_number": phone_number,
      "date": date,
      "location": location.toJson(),
      "historys": historys.map((res) => res.toJson()).toList().cast<Map>(),
    };
  }

  /// return string data encode json original data
  String toStringPretty() {
    return JsonEncoder.withIndent(" " * 2).convert(toJson());
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }

  /// return original data json
  static Map get defaultData {
    return {
      "user_id": 0,
      "phone_number": "",
      "date": 0,
      "location": {"latitude": -6.127616, "longitude": 106.891472},
      "historys": [
        {
          "phone_number": "+6281252414206",
          "location": {"latitude": -8.1271, "longitude": 112.174101},
          "date": 1678699117794,
          "update_date": 1678699117794
        }
      ]
    };
  }

  static SecretDataTelegram create({
    bool utils_is_print_data = false,
  }) {
    SecretDataTelegram secretDataTelegram_data_create = SecretDataTelegram();

    if (utils_is_print_data) {
      // print(secretDataTelegram_data_create.toStringPretty());
    }

    return secretDataTelegram_data_create;
  }
}

@embedded
class SecretDataTelegramLocation {
  // Id id = Isar.autoIncrement;
  // Id isar_data_id = Isar.autoIncrement;

  double latitude = -6.127616;

  double longitude = 106.891472;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "latitude") {
      latitude = value;
    }

    if (key == "longitude") {
      longitude = value;
    }
  }

  /// return original data json
  Map utils_remove_values_null() {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      if (value == null) {
        rawData.remove(key);
      }
    });
    return rawData;
  }

  /// return original data json
  Map utils_remove_by_values(List values) {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      for (var element in values) {
        if (value == element) {
          rawData.remove(key);
        }
      }
    });

    return rawData;
  }

  /// return original data json
  Map utils_remove_by_keys(List keys) {
    Map rawData = toJson();
    for (var element in keys) {
      rawData.remove(element);
    }
    return rawData;
  }

  /// return original data json
  Map utils_filter_by_keys(List keys) {
    Map rawData = toJson();
    Map jsonData = {};
    for (var key in keys) {
      jsonData[key] = rawData[key];
    }
    return jsonData;
  }

  /// return original data json
  Map toMap() {
    return toJson();
  }

  /// return original data json
  Map toJson() {
    return {
      "latitude": latitude,
      "longitude": longitude,
    };
  }

  /// return string data encode json original data
  String toStringPretty() {
    return JsonEncoder.withIndent(" " * 2).convert(toJson());
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }

  /// return original data json
  static Map get defaultData {
    return {"latitude": -6.127616, "longitude": 106.891472};
  }

  static SecretDataTelegramLocation create({
    bool utils_is_print_data = false,
  }) {
    SecretDataTelegramLocation secretDataTelegramLocation_data_create =
        SecretDataTelegramLocation();

    if (utils_is_print_data) {
      // print(secretDataTelegramLocation_data_create.toStringPretty());
    }

    return secretDataTelegramLocation_data_create;
  }
}

@embedded
class SecretDataTelegramHistorys {
  // Id id = Isar.autoIncrement;
  // Id isar_data_id = Isar.autoIncrement;

  String phone_number = "+6281252414206";

  SecretDataTelegramHistorysLocation location =
      SecretDataTelegramHistorysLocation();

  int date = 1678699117794;

  int update_date = 1678699117794;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "phone_number") {
      phone_number = value;
    }

    if (key == "location") {
      if (value is SecretDataTelegramHistorysLocation) {
        location = value;
      } else {
        SecretDataTelegramHistorysLocation state_value_procces =
            SecretDataTelegramHistorysLocation();
        (value as Map).forEach((key, value) {
          state_value_procces[key] = value;
        });
        location = state_value_procces;
      }
    }

    if (key == "date") {
      date = value;
    }

    if (key == "update_date") {
      update_date = value;
    }
  }

  /// return original data json
  Map utils_remove_values_null() {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      if (value == null) {
        rawData.remove(key);
      }
    });
    return rawData;
  }

  /// return original data json
  Map utils_remove_by_values(List values) {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      for (var element in values) {
        if (value == element) {
          rawData.remove(key);
        }
      }
    });

    return rawData;
  }

  /// return original data json
  Map utils_remove_by_keys(List keys) {
    Map rawData = toJson();
    for (var element in keys) {
      rawData.remove(element);
    }
    return rawData;
  }

  /// return original data json
  Map utils_filter_by_keys(List keys) {
    Map rawData = toJson();
    Map jsonData = {};
    for (var key in keys) {
      jsonData[key] = rawData[key];
    }
    return jsonData;
  }

  /// return original data json
  Map toMap() {
    return toJson();
  }

  /// return original data json
  Map toJson() {
    return {
      "phone_number": phone_number,
      "location": location.toJson(),
      "date": date,
      "update_date": update_date,
    };
  }

  /// return string data encode json original data
  String toStringPretty() {
    return JsonEncoder.withIndent(" " * 2).convert(toJson());
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }

  /// return original data json
  static Map get defaultData {
    return {
      "phone_number": "+6281252414206",
      "location": {"latitude": -8.1271, "longitude": 112.174101},
      "date": 1678699117794,
      "update_date": 1678699117794
    };
  }

  static SecretDataTelegramHistorys create({
    bool utils_is_print_data = false,
  }) {
    SecretDataTelegramHistorys secretDataTelegramHistorys_data_create =
        SecretDataTelegramHistorys();

    if (utils_is_print_data) {
      // print(secretDataTelegramHistorys_data_create.toStringPretty());
    }

    return secretDataTelegramHistorys_data_create;
  }
}

@embedded
class SecretDataTelegramHistorysLocation {
  // Id id = Isar.autoIncrement;
  // Id isar_data_id = Isar.autoIncrement;

  double latitude = -8.1271;

  double longitude = 112.174101;

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "latitude") {
      latitude = value;
    }

    if (key == "longitude") {
      longitude = value;
    }
  }

  /// return original data json
  Map utils_remove_values_null() {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      if (value == null) {
        rawData.remove(key);
      }
    });
    return rawData;
  }

  /// return original data json
  Map utils_remove_by_values(List values) {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      for (var element in values) {
        if (value == element) {
          rawData.remove(key);
        }
      }
    });

    return rawData;
  }

  /// return original data json
  Map utils_remove_by_keys(List keys) {
    Map rawData = toJson();
    for (var element in keys) {
      rawData.remove(element);
    }
    return rawData;
  }

  /// return original data json
  Map utils_filter_by_keys(List keys) {
    Map rawData = toJson();
    Map jsonData = {};
    for (var key in keys) {
      jsonData[key] = rawData[key];
    }
    return jsonData;
  }

  /// return original data json
  Map toMap() {
    return toJson();
  }

  /// return original data json
  Map toJson() {
    return {
      "latitude": latitude,
      "longitude": longitude,
    };
  }

  /// return string data encode json original data
  String toStringPretty() {
    return JsonEncoder.withIndent(" " * 2).convert(toJson());
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }

  /// return original data json
  static Map get defaultData {
    return {"latitude": -8.1271, "longitude": 112.174101};
  }

  static SecretDataTelegramHistorysLocation create({
    bool utils_is_print_data = false,
  }) {
    SecretDataTelegramHistorysLocation
        secretDataTelegramHistorysLocation_data_create =
        SecretDataTelegramHistorysLocation();

    if (utils_is_print_data) {
      // print(secretDataTelegramHistorysLocation_data_create.toStringPretty());
    }

    return secretDataTelegramHistorysLocation_data_create;
  }
}
