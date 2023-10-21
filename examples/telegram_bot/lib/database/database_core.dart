// ignore_for_file: non_constant_identifier_names, empty_catches, unnecessary_brace_in_string_interps

import 'dart:convert';
import 'dart:io';
import 'package:telegram_bot/database/database_data_type.dart';
import 'package:telegram_bot/database/database_type.dart';
import 'package:telegram_bot/database/default_database.dart';
import 'package:telegram_bot/database/update/database_update_telegram_userbot.dart';
import 'package:telegram_bot/database/update/database_update.dart';
import 'package:telegram_bot/database/scheme/chat_data_wa.dart';
import 'package:general_lib/general_lib.dart';
import 'package:supabase_client/supabase_client.dart' as supabase_client;
import "package:isar/isar.dart" as isar;

import "package:telegram_bot/database/scheme/scheme.dart"
    as isar_scheme;
import "package:path/path.dart" as p;
import 'package:telegram_bot/extension/map.dart';

import "package:telegram_bot/scheme/scheme.dart" as tg_scheme;
import 'package:supabase_client/supabase_client.dart';
import 'package:telegram_bot/white_list.dart';

enum BotType {
  xtx,
  glx,
}

class DatabaseLib {
  late final isar.Isar isar_db;
  late final isar.Isar isar_db_chat;
  late final isar.Isar isar_db_dynamic;
  Directory directory;
  DatabaseLib({
    required this.directory,
  });

  Future<void> init() async {
    isar_db = await isar.Isar.open(
      [
        isar_scheme.TgClientDataSchema,
      ],
      directory: directory.path,
      name: "general_bot",
      maxSizeMiB: isar.Isar.defaultMaxSizeMiB * 100,
    );

    isar_db_chat = await isar.Isar.open(
      [
        isar_scheme.ChatDataSchema,
        isar_scheme.ChatDataWaSchema,
      ],
      directory: directory.path,
      name: "general_bot_chat",
      maxSizeMiB: isar.Isar.defaultMaxSizeMiB * 100,
    );
    isar_db_dynamic = await isar.Isar.open(
      [
        isar_scheme.CallApiRateLimitSchema,
        isar_scheme.ChatDataSchema,
        isar_scheme.ChatDataWaSchema,
        isar_scheme.AdsDataSchema,
        isar_scheme.CacheSchema,
        isar_scheme.MessageDataSchema,
        isar_scheme.AppAccountMeesageeSchema,
        isar_scheme.AppAccountCoinloxSchema,
        isar_scheme.AppAccountRolePlayerSchema,
        isar_scheme.AppAccountGlxSchema,
        isar_scheme.AppAccountHexaminateSchema,
        isar_scheme.AppAccountGalaxeusSchema,
        isar_scheme.AppAccountSpectaSchema,
        isar_scheme.AppAccountEnvivoreSchema,
        isar_scheme.AppAccountAdsGatewaySchema,
        isar_scheme.SecretDataTelegramSchema,
      ],
      directory: directory.path,
      name: "general_bot_dynamic",
      maxSizeMiB: isar.Isar.defaultMaxSizeMiB * 100,
    );
  }
}

class Database {
  DatabaseLib database_lib;
  tg_scheme.ConfigRuntime configRuntime;
  bool is_application = false;
  DatabaseType database_type;
  bool is_userbot;
  BotType botType;
  Future<String> Function() systemInfoFetch;
  late SupabaseClient supabase_db;
  Database({
    this.database_type = DatabaseType.local,
    required this.botType,
    required this.database_lib,
    required this.configRuntime,
    this.is_application = false,
    required this.is_userbot,
    required this.systemInfoFetch,
  }) {
    if (RegExp(r"(supabase)", caseSensitive: false)
        .hasMatch(configRuntime.database.database_type ?? "")) {
      database_type = DatabaseType.supabase;

      supabase_db = SupabaseClient(
        configRuntime.database.supabase_id ?? "",
        configRuntime.database.supabase_key ?? "",
      );
    }
  }

  // supabase_client.Database bot_database({
  //   DatabaseDataType databaseDataType = DatabaseDataType.bot,
  //   DatabaseLib? databaseLib,
  // }) {
  //   // azkauserbot@gmail.com
  //   return supabase_client.Database(
  //     configRuntime.database.supabase_id ?? "",
  //     configRuntime.database.supabase_key ?? "",
  //   );
  // }

  // supabase_client.SupabaseClient bot_supabaseClient({
  //   DatabaseDataType databaseDataType = DatabaseDataType.bot,
  //   DatabaseLib? databaseLib,
  // }) {
  //   // glxaggerat@gmail.com
  //   return supabase_client.SupabaseClient(
  //     configRuntime.database.supabase_id ?? "",
  //     configRuntime.database.supabase_key ?? "",
  //   );
  // }

  supabase_client.Database glx_clone_bot_database({
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) {
    // glxaggerat@gmail.com
    return supabase_client.Database(
      configRuntime.database.clone_bot.url ?? "",
      configRuntime.database.clone_bot.key ?? "",
    );
  }

  Directory getDirectory({
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
  }) {
    Directory dir =
        Directory(p.join(database_lib.directory.path, databaseDataType.name));
    if (!dir.existsSync()) {
      dir.createSync(recursive: true);
    }
    return dir;
  }

  isar.Isar isar_db({
    required tg_scheme.TgClientData tgClientData,
    required int chat_id,
    required String chat_type,
    DatabaseLib? databaseLib,
  }) {
    databaseLib ??= database_lib;
    if (chat_type == "private") {
      if (chat_id == tgClientData.client_user_id) {
        return databaseLib.isar_db_chat;
      }
      // return databaseLib.isar_db_user;
    }
    return databaseLib.isar_db_chat;
  }

  isar.Isar isar_db_wa({
    required tg_scheme.WaClientData waClientData,
    required String chat_id,
    required String chat_type,
    DatabaseLib? databaseLib,
  }) {
    databaseLib ??= database_lib;
    // if (chat_type == "private") {
    //   if (chat_id == waClientData.client_user_id) {
    //     return databaseLib.isar_db_chat;
    //   }
    //   return databaseLib.isar_db_user;
    // }
    return databaseLib.isar_db_chat;
  }

  String getAccountId({
    required int bot_user_id,
    required int chat_id,
    // required bool isUser,
    required String chat_type,
  }) {
    if (chat_type == "private") {
      if (chat_id == bot_user_id) {
        return "${bot_user_id}-${bot_user_id}";
      }

      return "${bot_user_id}-${chat_id}";
    }
    return "${bot_user_id}-${chat_id}";
  }

  String getAccountIdWa({
    required String bot_user_id,
    required String chat_id,
    // required bool isUser,
    required String chat_type,
  }) {
    if (chat_type == "private") {
      if (chat_id == bot_user_id) {
        return "${bot_user_id}-${bot_user_id}";
      }

      return "${bot_user_id}-${chat_id}";
    }
    return "${bot_user_id}-${chat_id}";
  }

  String getFromTypeSupabase({
    required int bot_user_id,
    required int chat_id,
    // required bool isUser,
    required String chat_type,
  }) {
    if (chat_type == "private") {
      if (chat_id == bot_user_id) {
        return "telegram_chat";
      }

      return "telegram_user";
    }
    return "telegram_chat";
  }

  Future<Map?> getData({
    required tg_scheme.TgClientData tgClientData,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    bool isSaveNotFound = true,
    Map? value,
    String from = "telegram",
    List<String>? filters,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;

    value ??= {};
    value.removeNullVoid();
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   Map? get_data = await databaseLib.supabase_db.getMatch(
    //     from: from,
    //     query: {
    //       "client_user_id": tgClientData.client_user_id,
    //     },
    //     columns: filters,
    //   );
    //   if (get_data == null) {
    //     Map new_data = {};
    //     new_data.updateVoid(data: value);
    //     await databaseLib.supabase_db.add(
    //       from: from,
    //       data: {
    //         ...tgClientData.toJson(),
    //         ...new_data,
    //       },
    //     );
    //     return null;
    //   }
    //   return get_data;
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.TgClientData? get_data_procces = await databaseLib
        .isar_db.tgClientDatas
        .get(tgClientData.client_user_id!);
    if (get_data_procces == null) {
      isar_scheme.TgClientData tg_client_data_isar = isar_scheme.TgClientData();

      tg_client_data_isar.client_user_id = tgClientData.client_user_id!;

      await databaseLib.isar_db.writeTxn(
        () async {
          await databaseLib!.isar_db.tgClientDatas.put(tg_client_data_isar);
        },
        silent: true,
      );
      get_data_procces = tg_client_data_isar;
    }

    Map jsonData = {
      "client_user_id": get_data_procces.client_user_id,
      "client_token": get_data_procces.client_token,
      "client_username": get_data_procces.client_username,
      "owner_user_id": get_data_procces.owner_user_id,
      "from_bot_type": get_data_procces.from_bot_type,
      "from_bot_user_id": get_data_procces.from_bot_user_id,
      "expire_date": get_data_procces.expire_date,
    };
    jsonData.updateVoid(data: value);
    return jsonData;
    // }
  }

  void updateTgClientDataVoid({
    required isar_scheme.TgClientData tgClientDataIsar,
    required Map newValue,
  }) {
    // if (newValue)
  }

  Future<bool> saveData({
    required tg_scheme.TgClientData tgClientData,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    required Map newValue,
    String from = "telegram",
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    newValue.removeNullVoid();
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   await databaseLib.supabase_db.update(
    //     from: from,
    //     dataOrigin: {
    //       "id": tgClientData.client_user_id,
    //     },
    //     dataUpdate: newValue,
    //   );
    //   return true;
    // }
    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.TgClientData? get_data_procces = await databaseLib
        .isar_db.tgClientDatas
        .get(tgClientData.client_user_id!);
    if (get_data_procces == null) {
      isar_scheme.TgClientData tg_client_data_isar = isar_scheme.TgClientData();
      tg_client_data_isar.client_user_id = tgClientData.client_user_id!;

      await databaseLib.isar_db.writeTxn(
        () async {
          await databaseLib!.isar_db.tgClientDatas.put(tg_client_data_isar);
        },
        silent: true,
      );
      return true;
    }
    await databaseLib.isar_db.writeTxn(
      () async {
        await databaseLib!.isar_db.tgClientDatas.put(get_data_procces);
      },
      silent: true,
    );
    return true;
    // }
  }

  Future<List<Map>> getAlls({
    String from = "telegram",
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   List<Map> es = await databaseLib.supabase_db.getAll(from: from);
    //   return es;
    // }

    return [];
  }

  Future<Map?> getClient({
    required tg_scheme.TgClientData tgClientData,
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   Map? es = await databaseLib.supabase_db.getMatch(
    //     from: "telegram",
    //     query: {
    //       "client_user_id": tgClientData.client_user_id,
    //     },
    //   );
    //   if (es == null) {
    //     await databaseLib.supabase_db.add(
    //       from: "telegram",
    //       data: tgClientData.toJson(),
    //     );
    //     return tgClientData.toJson();
    //   }
    //   return es;
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.TgClientData? tg_client_data_procces = await databaseLib
        .isar_db.tgClientDatas
        .filter()
        .client_user_idEqualTo(tgClientData.client_user_id!)
        .findFirst();
    if (tg_client_data_procces == null) {
      isar_scheme.TgClientData tg_client_data_new_procces =
          isar_scheme.TgClientData();
      tgClientData.toJson().forEach((key, value) {
        try {
          if (value == null) {
            return;
          }
          tg_client_data_new_procces[key] = value;
        } catch (e) {}
      });
      await databaseLib.isar_db.writeTxn(
        () async {
          await databaseLib!.isar_db.tgClientDatas
              .put(tg_client_data_new_procces);
        },
        silent: true,
      );
      return tg_client_data_new_procces.toJson();
    }
    return tg_client_data_procces.toJson();
    // }
  }

  Future<Map?> getClientByClientId({
    required tg_scheme.TgClientData tgClientData,
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   Map? es = await databaseLib.supabase_db.getMatch(
    //     from: "telegram",
    //     query: {
    //       "client_user_id": tgClientData.client_user_id,
    //     },
    //   );
    //   if (es == null) {
    //     await databaseLib.supabase_db.add(
    //       from: "telegram",
    //       data: tgClientData.toJson(),
    //     );
    //     return tgClientData.toJson();
    //   }
    //   return es;
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.TgClientData? tg_client_data_procces = await databaseLib
        .isar_db.tgClientDatas
        .filter()
        .client_idEqualTo(tgClientData["client_id"]!)
        .findFirst();
    if (tg_client_data_procces == null) {
      isar_scheme.TgClientData tg_client_data_new_procces =
          isar_scheme.TgClientData();
      tgClientData.toJson().forEach((key, value) {
        try {
          if (value == null) {
            return;
          }
          tg_client_data_new_procces[key] = value;
        } catch (e) {}
      });
      await databaseLib.isar_db.writeTxn(
        () async {
          await databaseLib!.isar_db.tgClientDatas
              .put(tg_client_data_new_procces);
        },
        silent: true,
      );
      return tg_client_data_new_procces.toJson();
    }
    return tg_client_data_procces.toJson();
    // }
  }

  Future<List<Map<String, dynamic>>> getClients({
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // if (databaseLib.databaseType == DatabaseType.isar) {
    return await databaseLib.isar_db.tgClientDatas
        .filter()
        .client_user_idGreaterThan(0)
        .build()
        .exportJson();
    // }
  }

  Future<bool> deleteClient({
    required tg_scheme.TgClientData tgClientData,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   await databaseLib.supabase_db.delete(
    //     from: "telegram",
    //     datas: {
    //       "client_user_id": tgClientData.client_user_id,
    //     },
    //   );
    //   return true;
    // }
    return await databaseLib.isar_db.writeTxn(
      () async {
        // if (databaseLib.databaseType == DatabaseType.isar) {
        return await databaseLib!.isar_db.tgClientDatas
            .filter()
            .client_user_idEqualTo(tgClientData.client_user_id!)
            .deleteFirst();
        // }
      },
      silent: true,
    );
  }

  Future<bool> deleteClientByClientId({
    required int client_id,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   return await databaseLib.isar_db.writeTxn(() async {
    //     return await databaseLib!.supabase_db.delete(
    //       from: "telegram",
    //       datas: {
    //         "client_user_id": tgClientData.client_user_id,
    //       },
    //     );
    //   });
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.TgClientData? tg_client_data_procces = await databaseLib
        .isar_db.tgClientDatas
        .filter()
        .client_idEqualTo(client_id)
        .findFirst();
    if (tg_client_data_procces == null) {
      return true;
    }
    return await databaseLib.isar_db.writeTxn(
      () async {
        return await databaseLib!.isar_db.tgClientDatas
            .filter()
            .client_idEqualTo(client_id)
            .deleteFirst();
      },
      silent: true,
    );
    // }
  }

  ///
  /// ```dart
  /// {
  ///   "user_id": 0,
  ///   "date": 0,
  ///   "created_at": "",
  ///   "expire_login_date": 0,
  /// }
  /// ```
  ///

  // Future<Map?> getLifeTimeUserbot({
  //   required int user_id,
  //   bool isSaveNotFound = true,
  //   bool isWithoutFetch = false,
  //   DatabaseDataType databaseDataType = DatabaseDataType.bot,
  //   DatabaseLib? databaseLib,
  // }) async {
  //   databaseLib ??= database_lib;
  //   Map? es = await databaseLib.supabase_db.getMatch(
  //     from: "telegram",
  //     query: {
  //       "user_id": user_id,
  //     },
  //     supabaseClient: supabase_client.SupabaseClient(
  //       "https://thmjltdgucpiqatvmcqb.supabase.co",
  //       "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRobWpsdGRndWNwaXFhdHZtY3FiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MzEwMDk4OCwiZXhwIjoxOTk4Njc2OTg4fQ.WBqC7YhHAGuDN_GBvvbOhBhPFA37mSf9-vKmKbpTzJ0",
  //     ),
  //   );

  //   if (es == null) {
  //     return null;
  //   }
  //   return es;
  // }

  // Future<bool> saveLifeTimeUserbot({
  //   required int user_id,
  //   required Map newData,
  //   bool isNewData = false,
  //   DatabaseDataType databaseDataType = DatabaseDataType.bot,
  //   DatabaseLib? databaseLib,
  // }) async {
  //   databaseLib ??= database_lib;
  //   // newData.removeByKeys(["@type"]);
  //   newData["user_id"] = user_id;
  //   if (isNewData) {
  //     await databaseLib.supabase_db.add(
  //       from: "telegram",
  //       data: newData,
  //       supabaseClient: supabase_client.SupabaseClient(
  //         "https://thmjltdgucpiqatvmcqb.supabase.co",
  //         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRobWpsdGRndWNwaXFhdHZtY3FiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MzEwMDk4OCwiZXhwIjoxOTk4Njc2OTg4fQ.WBqC7YhHAGuDN_GBvvbOhBhPFA37mSf9-vKmKbpTzJ0",
  //       ),
  //     );
  //   } else {
  //     await databaseLib.supabase_db.update(
  //       from: "telegram",
  //       dataOrigin: {
  //         "user_id": user_id,
  //       },
  //       dataUpdate: newData,
  //       supabaseClient: supabase_client.SupabaseClient(
  //         "https://thmjltdgucpiqatvmcqb.supabase.co",
  //         "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRobWpsdGRndWNwaXFhdHZtY3FiIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4MzEwMDk4OCwiZXhwIjoxOTk4Njc2OTg4fQ.WBqC7YhHAGuDN_GBvvbOhBhPFA37mSf9-vKmKbpTzJ0",
  //       ),
  //     );
  //   }
  //   return true;
  // }

  Future<bool> saveClient({
    required tg_scheme.TgClientData tgClientData,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   await databaseLib.supabase_db.update(
    //     from: "telegram",
    //     dataOrigin: {
    //       "client_user_id": tgClientData.client_user_id,
    //     },
    //     dataUpdate: tgClientData.toJson(),
    //   );
    //   return true;
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.TgClientData? tg_client_data_procces = await databaseLib
        .isar_db.tgClientDatas
        .filter()
        .client_user_idEqualTo(tgClientData.client_user_id!)
        .findFirst();
    if (tg_client_data_procces == null) {
      isar_scheme.TgClientData tg_client_data_new_procces =
          isar_scheme.TgClientData();
      tgClientData.toJson().forEach((key, value) {
        try {
          if (value == null) {
            return;
          }
          tg_client_data_new_procces[key] = value;
        } catch (e) {}
      });
      await databaseLib.isar_db.writeTxn(
        () async {
          await databaseLib!.isar_db.tgClientDatas
              .put(tg_client_data_new_procces);
        },
        silent: true,
      );
      return true;
    }
    tgClientData.toJson().forEach((key, value) {
      try {
        if (value == null) {
          return;
        }
        tg_client_data_procces[key] = value;
      } catch (e) {}
    });
    await databaseLib.isar_db.writeTxn(
      () async {
        await databaseLib!.isar_db.tgClientDatas.put(tg_client_data_procces);
      },
      silent: true,
    );
    return true;
    // }
  }

  List<int> encryptData({
    required Map data,
    DatabaseLib? databaseLib,
    tg_scheme.TgClientData? tgClientData,
  }) {
    databaseLib ??= database_lib;
    try {
      return gzip.encode(utf8.encode(json.encode(data)));
    } catch (e, stack) {
      print("encrypt: ${e}, ${stack}");
      print(tgClientData);
      rethrow;
    }
  }

  Map decyprtData({
    required List<int> data,
    DatabaseLib? databaseLib,
    tg_scheme.TgClientData? tgClientData,
  }) {
    databaseLib ??= database_lib;
    try {
      return (json.decode(utf8.decode(gzip.decode(data))) as Map);
    } catch (e, stack) {
      print("decrypt: ${e}, ${stack}");
      print(tgClientData);
      rethrow;
    }
  }

  List<int> encryptDataWa({
    required Map data,
    DatabaseLib? databaseLib,
    tg_scheme.WaClientData? waClientData,
  }) {
    databaseLib ??= database_lib;
    try {
      return gzip.encode(utf8.encode(json.encode(data)));
    } catch (e, stack) {
      print("encrypt: ${e}, ${stack}");
      print(waClientData);
      rethrow;
    }
  }

  Map decyprtDataWa({
    required List<int> data,
    DatabaseLib? databaseLib,
    tg_scheme.WaClientData? waClientData,
  }) {
    databaseLib ??= database_lib;
    try {
      return (json.decode(utf8.decode(gzip.decode(data))) as Map);
    } catch (e, stack) {
      print("decrypt: ${e}, ${stack}");
      print(waClientData);
      rethrow;
    }
  }

  Future<tg_scheme.ChatData> getChatCache({
    required String chat_type,
    required int chat_id,
    required int room_chat_id,
    required tg_scheme.TgClientData tgClientData,
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    Map? value,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
    required Future<tg_scheme.ChatData> Function() onNotFoundData,
  }) async {
    databaseLib ??= database_lib;
    value ??= {};

    if (RegExp(r"^(private)$", caseSensitive: false).hashData(chat_type)) {
      room_chat_id = tgClientData.client_user_id ?? 0;
    }
    if (isWithoutFetch) {
      return tg_scheme.ChatData(value);
    }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.ChatData? chat_data_procces = await databaseLib
        .isar_db_dynamic.chatDatas
        .filter()
        .chat_idEqualTo(chat_id)
        .client_user_idEqualTo(tgClientData.client_user_id!)
        .room_chat_idEqualTo(room_chat_id)
        .findFirst();

    if (chat_data_procces == null) {
      tg_scheme.ChatData chatData = await onNotFoundData();

      if (creator_tg_origin_user_ids.contains(tgClientData.owner_user_id)) {
        if (chat_type == "private") {
          if (chat_id == tgClientData.client_user_id) {
            DefaultDataBase.price_clone.forEach((key, value_data) {
              chatData[key] = value_data;
            });
          }
        }
      }
      return chatData;
    }

    try {
      tg_scheme.ChatData chatData = tg_scheme.ChatData(decyprtData(
        data: chat_data_procces.data,
        databaseLib: databaseLib,
        tgClientData: tgClientData,
      ));

      if (creator_tg_origin_user_ids.contains(tgClientData.owner_user_id)) {
        if (chat_type == "private") {
          if (chat_id == tgClientData.client_user_id) {
            if (is_userbot) {
              await chatData.utils_update_data_telegram_userbot(
                  tgClientData: tgClientData);
            } else {
              chatData["id"] = chat_id;
              await chatData.utils_update_data_telegram_bot(
                  tgClientData: tgClientData);
              DefaultDataBase.price_clone.forEach((key, value_data) {
                chatData[key] = value_data;
              });
            }
          }
        } else {
          if (is_userbot) {
          } else {
            chatData["id"] = chat_id;
            await chatData.utils_update_data_group_telegram_bot(
              msg_chat: value,
              tgClientData: tgClientData,
            );
          }
        }
      }
      return chatData;
    } catch (e) {
      tg_scheme.ChatData chatData = tg_scheme.ChatData(value);

      if (creator_tg_origin_user_ids.contains(tgClientData.owner_user_id)) {
        if (chat_type == "private") {
          if (chat_id == tgClientData.client_user_id) {
            if (is_userbot) {
              await chatData.utils_update_data_telegram_userbot(
                  tgClientData: tgClientData);
            } else {
              chatData["id"] = chat_id;
              await chatData.utils_update_data_telegram_bot(
                  tgClientData: tgClientData);
              DefaultDataBase.price_clone.forEach((key, value_data) {
                chatData[key] = value_data;
              });
            }
          }
        } else {
          if (is_userbot) {
          } else {
            chatData["id"] = chat_id;
            await chatData.utils_update_data_group_telegram_bot(
              msg_chat: value,
              tgClientData: tgClientData,
            );
          }
        }
      }

      return chatData;
    }
    // }
  }

  Future<bool> saveChatCache({
    required String chat_type,
    required int chat_id,
    required int room_chat_id,
    required Map newData,
    bool isWithoutSave = false,
    required tg_scheme.TgClientData tgClientData,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // String account_id_procces = getAccountId(
    //   bot_user_id: tgClientData.client_user_id!,
    //   chat_id: chat_id,
    //   chat_type: chat_type,
    // );

    if (RegExp(r"^(private)$", caseSensitive: false).hashData(chat_type)) {
      room_chat_id = tgClientData.client_user_id ?? 0;
    }
    if (isWithoutSave) {
      return true;
    }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.ChatData? chat_data_procces = await databaseLib
        .isar_db_dynamic.chatDatas
        .filter()
        .chat_idEqualTo(chat_id)
        .client_user_idEqualTo(tgClientData.client_user_id!)
        .room_chat_idEqualTo(room_chat_id)
        .findFirst();

    if (chat_data_procces == null) {
      isar_scheme.ChatData chat_data_new_procces = isar_scheme.ChatData();
      chat_data_new_procces.chat_id = chat_id;
      chat_data_new_procces.client_user_id = tgClientData.client_user_id!;
      chat_data_new_procces.room_chat_id = room_chat_id;
      // chat_data_new_procces.data = json.encode(newData);
      chat_data_new_procces.data = encryptData(
        data: newData,
        databaseLib: databaseLib,
        tgClientData: tgClientData,
      );
      await databaseLib.isar_db_dynamic.writeTxn(
        () async {
          await databaseLib!.isar_db_dynamic.chatDatas
              .put(chat_data_new_procces);
        },
        silent: true,
      );
      return true;
    }
    chat_data_procces.data = encryptData(
      data: newData,
      databaseLib: databaseLib,
      tgClientData: tgClientData,
    );
    await databaseLib.isar_db_dynamic.writeTxn(
      () async {
        await databaseLib!.isar_db_dynamic.chatDatas.put(chat_data_procces);
      },
      silent: true,
    );
    return true;
    // }
  }

  Future<int> getChatsCount({
    required tg_scheme.TgClientData tgClientData,
    required String chat_type,
    required int chat_id,
    required int room_chat_id,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    if (RegExp(r"^(private)$", caseSensitive: false).hashData(chat_type)) {
      room_chat_id = tgClientData.client_user_id ?? 0;
    }
    int chat_data_count = await isar_db(
      tgClientData: tgClientData,
      chat_id: chat_id,
      chat_type: chat_type,
      databaseLib: databaseLib,
    )
        .chatDatas
        .filter()
        .client_user_idEqualTo(tgClientData.client_user_id!)
        .room_chat_idEqualTo(room_chat_id)
        .count();
    return chat_data_count;
  }

  Future<tg_scheme.ChatDataWa> getChatWa({
    required String chat_type,
    required String chat_id,
    required String room_chat_id,
    required tg_scheme.WaClientData waClientData,
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    Map? value,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
    required Future<tg_scheme.ChatDataWa> Function() onNotFoundData,
  }) async {
    databaseLib ??= database_lib;
    value ??= {};
    if (RegExp(r"^(private)$", caseSensitive: false).hashData(chat_type)) {
      room_chat_id = "${waClientData.client_user_id ?? 0}";
    }

    if (isWithoutFetch) {
      return tg_scheme.ChatDataWa(value);
    }
    // String account_id_procces = getAccountIdWa(
    //   bot_user_id:"${tgClientData.client_user_id!}",
    //   chat_id: chat_id,
    //   chat_type: chat_type,
    // );
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    // Map? es = await databaseLib.supabase_db.getMatch(
    //   from: getFromTypeSupabase(
    //     bot_user_id: tgClientData.client_user_id!,
    //     chat_id: chat_id,
    //     chat_type: chat_type,
    //   ),
    //   query: {
    //     "account_id": (account_id_procces),
    //   },
    // );
    // if (es == null) {
    //   Map jsonData = {
    //     "account_id": (account_id_procces),
    //     "data": value,
    //   };
    //   await databaseLib.supabase_db.add(
    //     from: getFromTypeSupabase(
    //       bot_user_id: tgClientData.client_user_id!,
    //       chat_id: chat_id,
    //       chat_type: chat_type,
    //     ),
    //     data: jsonData,
    //   );
    //   return jsonData["data"];
    // }
    // return tg_scheme.ChatData(es["data"] as Map);
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.ChatDataWa? chat_data_procces = await isar_db_wa(
      waClientData: waClientData,
      chat_id: chat_id,
      chat_type: chat_type,
    )
        .chatDataWas
        .filter()
        .chat_idEqualTo(chat_id)
        .client_user_idEqualTo(waClientData.client_user_id!)
        .room_chat_idEqualTo(room_chat_id)
        .findFirst();

    if (chat_data_procces == null) {
      tg_scheme.ChatDataWa chatData = await onNotFoundData();

      return chatData;
    }

    try {
      tg_scheme.ChatDataWa chatData = tg_scheme.ChatDataWa(decyprtDataWa(
        data: chat_data_procces.data,
        databaseLib: databaseLib,
        waClientData: waClientData,
      ));

      return chatData;
    } catch (e) {
      tg_scheme.ChatDataWa chatData = tg_scheme.ChatDataWa(value);
      return chatData;
    }
    // }
  }

  Future<bool> saveChatWa({
    required String chat_type,
    required String chat_id,
    required String room_chat_id,
    required Map newData,
    required tg_scheme.WaClientData waClientData,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // String account_id_procces = getAccountId(
    //   bot_user_id: tgClientData.client_user_id!,
    //   chat_id: chat_id,
    //   chat_type: chat_type,
    // );

    if (RegExp(r"^(private)$", caseSensitive: false).hashData(chat_type)) {
      room_chat_id = waClientData.client_user_id ?? "0";
    }

    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   await databaseLib.supabase_db.update(
    //     from: getFromTypeSupabase(
    //       bot_user_id: tgClientData.client_user_id!,
    //       chat_id: chat_id,
    //       chat_type: chat_type,
    //     ),
    //     dataOrigin: {
    //       "account_id": account_id_procces,
    //     },
    //     dataUpdate: {"data": newData},
    //   );
    //   return true;
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.ChatDataWa? chat_data_procces = await isar_db_wa(
      waClientData: waClientData,
      chat_id: chat_id,
      chat_type: chat_type,
    )
        .chatDataWas
        .filter()
        .chat_idEqualTo(chat_id)
        .client_user_idEqualTo(waClientData.client_user_id!)
        .room_chat_idEqualTo(room_chat_id)
        .findFirst();

    if (chat_data_procces == null) {
      isar_scheme.ChatDataWa chat_data_new_procces = isar_scheme.ChatDataWa();
      chat_data_new_procces.chat_id = chat_id;
      chat_data_new_procces.client_user_id = waClientData.client_user_id!;
      chat_data_new_procces.room_chat_id = room_chat_id;
      // chat_data_new_procces.data = utf8.encode(json.encode(newData));
      chat_data_new_procces.data = encryptDataWa(
        data: newData,
        databaseLib: databaseLib,
        waClientData: waClientData,
      );
      await isar_db_wa(
        waClientData: waClientData,
        chat_id: chat_id,
        chat_type: chat_type,
      ).writeTxn(
        () async {
          await isar_db_wa(
            waClientData: waClientData,
            chat_id: chat_id,
            chat_type: chat_type,
          ).chatDataWas.put(chat_data_new_procces);
        },
        silent: true,
      );
      return true;
    }
    chat_data_procces.data = encryptDataWa(
      data: newData,
      databaseLib: databaseLib,
      waClientData: waClientData,
    );
    await isar_db_wa(
      waClientData: waClientData,
      chat_id: chat_id,
      chat_type: chat_type,
    ).writeTxn(
      () async {
        await isar_db_wa(
          waClientData: waClientData,
          chat_id: chat_id,
          chat_type: chat_type,
        ).chatDataWas.put(chat_data_procces);
      },
      silent: true,
    );
    return true;
    // }
  }

  Future<tg_scheme.AdsData> getAds({
    required String chat_type,
    required int chat_id,
    required tg_scheme.TgClientData tgClientData,
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    Map? value,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
    required Future<tg_scheme.AdsData> Function() onNotFoundData,
  }) async {
    databaseLib ??= database_lib;
    value ??= {};
    if (isWithoutFetch) {
      return tg_scheme.AdsData(value);
    }
    // String account_id_procces = getAccountId(
    //   bot_user_id: tgClientData.client_user_id!,
    //   chat_id: chat_id,
    //   chat_type: chat_type,
    // );
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   Map? es = await databaseLib.supabase_db.getMatch(
    //     from: getFromTypeSupabase(
    //       bot_user_id: tgClientData.client_user_id!,
    //       chat_id: chat_id,
    //       chat_type: chat_type,
    //     ),
    //     query: {
    //       "account_id": (account_id_procces),
    //     },
    //   );
    //   if (es == null) {
    //     Map jsonData = {
    //       "account_id": (account_id_procces),
    //       "data": value,
    //     };
    //     await databaseLib.supabase_db.add(
    //       from: getFromTypeSupabase(
    //         bot_user_id: tgClientData.client_user_id!,
    //         chat_id: chat_id,
    //         chat_type: chat_type,
    //       ),
    //       data: jsonData,
    //     );
    //     return jsonData["data"];
    //   }
    //   return tg_scheme.AdsData(es["data"] as Map);
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.AdsData? chat_data_procces = await databaseLib
        .isar_db_dynamic.adsDatas
        .filter()
        .chat_idEqualTo(chat_id)
        .client_user_idEqualTo(tgClientData.client_user_id!)
        .findFirst();

    if (chat_data_procces == null) {
      return await onNotFoundData();
    }
    try {
      return tg_scheme.AdsData(decyprtData(
        data: chat_data_procces.data,
        databaseLib: databaseLib,
        tgClientData: tgClientData,
      ));
      // return (json.decode(chat_data_procces.data) as Map);
    } catch (e) {
      return tg_scheme.AdsData(value);
    }
    // }
  }

  Future<bool> saveAds({
    required String chat_type,
    required int chat_id,
    required Map newData,
    required tg_scheme.TgClientData tgClientData,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // String account_id_procces = getAccountId(
    //   bot_user_id: tgClientData.client_user_id!,
    //   chat_id: chat_id,
    //   chat_type: chat_type,
    // );

    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   await databaseLib.supabase_db.update(
    //     from: getFromTypeSupabase(
    //       bot_user_id: tgClientData.client_user_id!,
    //       chat_id: chat_id,
    //       chat_type: chat_type,
    //     ),
    //     dataOrigin: {
    //       "account_id": account_id_procces,
    //     },
    //     dataUpdate: {"data": newData},
    //   );
    //   return true;
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.AdsData? ads_data_procces = await databaseLib
        .isar_db_dynamic.adsDatas
        .filter()
        .chat_idEqualTo(chat_id)
        .client_user_idEqualTo(tgClientData.client_user_id!)
        .findFirst();
    if (ads_data_procces == null) {
      isar_scheme.AdsData ads_data_new_procces = isar_scheme.AdsData();
      ads_data_new_procces.chat_id = chat_id;
      ads_data_new_procces.client_user_id = tgClientData.client_user_id!;
      ads_data_new_procces.data = encryptData(
        data: newData,
        databaseLib: databaseLib,
        tgClientData: tgClientData,
      );
      await databaseLib.isar_db_dynamic.writeTxn(
        () async {
          await databaseLib!.isar_db_dynamic.adsDatas.put(ads_data_new_procces);
        },
        silent: true,
      );
      return true;
    }
    ads_data_procces.data = encryptData(
      data: newData,
      databaseLib: databaseLib,
      tgClientData: tgClientData,
    );
    await databaseLib.isar_db_dynamic.writeTxn(
      () async {
        await databaseLib!.isar_db_dynamic.adsDatas.put(ads_data_procces);
      },
      silent: true,
    );
    return true;
    // }
  }

  Future<tg_scheme.CallApiRateLimit?> getCallApiCache({
    required int client_user_id,
    required String method,
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    Map? value,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    value ??= {};

    // getAccountId(
    //   bot_user_id: tgClientData.client_user_id!,
    //   chat_id: chat_id,
    //   chat_type: chat_type,
    // );

    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   Map? es = await databaseLib.supabase_db.getMatch(
    //     from: getFromTypeSupabase(
    //       bot_user_id: tgClientData.client_user_id!,
    //       chat_id: chat_id,
    //       chat_type: chat_type,
    //     ),
    //     query: {
    //       "account_id": (account_id_procces),
    //     },
    //   );
    //   if (es == null) {
    //     Map jsonData = {
    //       "account_id": (account_id_procces),
    //       "data": value,
    //     };
    //     await databaseLib.supabase_db.add(
    //       from: getFromTypeSupabase(
    //         bot_user_id: tgClientData.client_user_id!,
    //         chat_id: chat_id,
    //         chat_type: chat_type,
    //       ),
    //       data: jsonData,
    //     );
    //     return jsonData["data"];
    //   }
    //   return (es["data"] as Map);
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.CallApiRateLimit? callApiRateLimit = await databaseLib
        .isar_db_dynamic.callApiRateLimits
        .filter()
        .client_user_idEqualTo(client_user_id)
        .methodEqualTo(method)
        .findFirst();

    if (callApiRateLimit == null) {
      isar_scheme.CallApiRateLimit callApiRateLimit_data_new_procces =
          isar_scheme.CallApiRateLimit();
      callApiRateLimit_data_new_procces.client_user_id = client_user_id;

      await databaseLib.isar_db_dynamic.writeTxn(
        () async {
          await databaseLib!.isar_db_dynamic.callApiRateLimits
              .put(callApiRateLimit_data_new_procces);
        },
        silent: true,
      );

      return tg_scheme.CallApiRateLimit(
          callApiRateLimit_data_new_procces.toJson().clone());
    }

    return tg_scheme.CallApiRateLimit(callApiRateLimit.toJson().clone());
  }

  Future<bool> saveCallApiCache({
    required int client_user_id,
    required String method,
    required tg_scheme.CallApiRateLimit newCallApiRateLimit,
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    if (isWithoutFetch) {
      return false;
    }

    // getAccountId(
    //   bot_user_id: tgClientData.client_user_id!,
    //   chat_id: chat_id,
    //   chat_type: chat_type,
    // );

    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   Map? es = await databaseLib.supabase_db.getMatch(
    //     from: getFromTypeSupabase(
    //       bot_user_id: tgClientData.client_user_id!,
    //       chat_id: chat_id,
    //       chat_type: chat_type,
    //     ),
    //     query: {
    //       "account_id": (account_id_procces),
    //     },
    //   );
    //   if (es == null) {
    //     Map jsonData = {
    //       "account_id": (account_id_procces),
    //       "data": value,
    //     };
    //     await databaseLib.supabase_db.add(
    //       from: getFromTypeSupabase(
    //         bot_user_id: tgClientData.client_user_id!,
    //         chat_id: chat_id,
    //         chat_type: chat_type,
    //       ),
    //       data: jsonData,
    //     );
    //     return jsonData["data"];
    //   }
    //   return (es["data"] as Map);
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.CallApiRateLimit? callApiRateLimit = await databaseLib
        .isar_db_dynamic.callApiRateLimits
        .filter()
        .client_user_idEqualTo(client_user_id)
        .methodEqualTo(method)
        .findFirst();

    if (callApiRateLimit == null) {
      isar_scheme.CallApiRateLimit callApiRateLimit_data_new_procces =
          isar_scheme.CallApiRateLimit();
      callApiRateLimit_data_new_procces.client_user_id = client_user_id;
      newCallApiRateLimit.rawData["client_user_id"] = client_user_id;

      newCallApiRateLimit.rawData.forEach((key, value) {
        callApiRateLimit_data_new_procces[key] = value;
      });

      await databaseLib.isar_db_dynamic.writeTxn(
        () async {
          await databaseLib!.isar_db_dynamic.callApiRateLimits
              .put(callApiRateLimit_data_new_procces);
        },
        silent: true,
      );
      return true;
    }
    newCallApiRateLimit.rawData["client_user_id"] = client_user_id;
    newCallApiRateLimit.rawData.forEach((key, value) {
      callApiRateLimit[key] = value;
    });
    await databaseLib.isar_db_dynamic.writeTxn(
      () async {
        await databaseLib!.isar_db_dynamic.callApiRateLimits
            .put(callApiRateLimit);
      },
      silent: true,
    );
    return true;
  }

  Future<Map?> getCache({
    required int client_user_id,
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    Map? value,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    value ??= {};
    if (isWithoutFetch) {
      return value;
    }

    String account_id_procces = "${client_user_id}";

    // getAccountId(
    //   bot_user_id: tgClientData.client_user_id!,
    //   chat_id: chat_id,
    //   chat_type: chat_type,
    // );

    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   Map? es = await databaseLib.supabase_db.getMatch(
    //     from: getFromTypeSupabase(
    //       bot_user_id: tgClientData.client_user_id!,
    //       chat_id: chat_id,
    //       chat_type: chat_type,
    //     ),
    //     query: {
    //       "account_id": (account_id_procces),
    //     },
    //   );
    //   if (es == null) {
    //     Map jsonData = {
    //       "account_id": (account_id_procces),
    //       "data": value,
    //     };
    //     await databaseLib.supabase_db.add(
    //       from: getFromTypeSupabase(
    //         bot_user_id: tgClientData.client_user_id!,
    //         chat_id: chat_id,
    //         chat_type: chat_type,
    //       ),
    //       data: jsonData,
    //     );
    //     return jsonData["data"];
    //   }
    //   return (es["data"] as Map);
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.Cache? cache_data_procces = await databaseLib
        .isar_db_dynamic.caches
        .filter()
        .account_idEqualTo(account_id_procces)
        .findFirst();

    if (cache_data_procces == null) {
      isar_scheme.Cache cache_data_new_procces = isar_scheme.Cache();
      cache_data_new_procces.account_id = account_id_procces;

      cache_data_new_procces.data = encryptData(data: value);
      //  gzip.encode(utf8.encode(json.encode(value)));

      await databaseLib.isar_db_dynamic.writeTxn(
        () async {
          await databaseLib!.isar_db_dynamic.caches.put(cache_data_new_procces);
        },
        silent: true,
      );
      try {
        return decyprtData(data: cache_data_new_procces.data);
        // return (json.decode(utf8.decode(gzip.decode(cache_data_new_procces.data))) as Map);
      } catch (e) {
        return value;
      }
    }
    try {
      return decyprtData(data: cache_data_procces.data);

      // return (json.decode(utf8.decode(gzip.decode(cache_data_procces.data))) as Map);
    } catch (e) {
      return value;
    }
    // }
  }

  Future<bool> saveCache({
    required int client_user_id,
    required Map newCache,
    bool isSaveNotFound = true,
    bool isWithoutFetch = false,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    if (isWithoutFetch) {
      return false;
    }

    String account_id_procces = "${client_user_id}";

    // getAccountId(
    //   bot_user_id: tgClientData.client_user_id!,
    //   chat_id: chat_id,
    //   chat_type: chat_type,
    // );

    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   Map? es = await databaseLib.supabase_db.getMatch(
    //     from: getFromTypeSupabase(
    //       bot_user_id: tgClientData.client_user_id!,
    //       chat_id: chat_id,
    //       chat_type: chat_type,
    //     ),
    //     query: {
    //       "account_id": (account_id_procces),
    //     },
    //   );
    //   if (es == null) {
    //     Map jsonData = {
    //       "account_id": (account_id_procces),
    //       "data": value,
    //     };
    //     await databaseLib.supabase_db.add(
    //       from: getFromTypeSupabase(
    //         bot_user_id: tgClientData.client_user_id!,
    //         chat_id: chat_id,
    //         chat_type: chat_type,
    //       ),
    //       data: jsonData,
    //     );
    //     return jsonData["data"];
    //   }
    //   return (es["data"] as Map);
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.Cache? cache_data_procces = await databaseLib
        .isar_db_dynamic.caches
        .filter()
        .account_idEqualTo(account_id_procces)
        .findFirst();

    if (cache_data_procces == null) {
      isar_scheme.Cache cache_data_new_procces = isar_scheme.Cache();
      cache_data_new_procces.account_id = account_id_procces;
      cache_data_new_procces.data = encryptData(data: newCache);
      // gzip.encode(utf8.encode(json.encode(newCache)));
      await databaseLib.isar_db_dynamic.writeTxn(
        () async {
          await databaseLib!.isar_db_dynamic.caches.put(cache_data_new_procces);
        },
        silent: true,
      );
      return true;
    }
    newCache["client_user_id"] = client_user_id;
    cache_data_procces.data = encryptData(data: newCache);
    //  gzip.encode(utf8.encode(json.encode(newCache)));
    await databaseLib.isar_db_dynamic.writeTxn(
      () async {
        await databaseLib!.isar_db_dynamic.caches.put(cache_data_procces);
      },
      silent: true,
    );
    return true;
  }

  // Future<bool> saveCache({
  //   required String chat_type,
  //   required int chat_id,
  //   required Map newData,
  //   required TgClientData tgClientData,
  //   DatabaseDataType databaseDataType = DatabaseDataType.bot,
  //   DatabaseLib? databaseLib,
  // }) async {
  //   databaseLib ??= database_lib;
  //   String account_id_procces = getAccountId(
  //     bot_user_id: tgClientData.client_user_id!,
  //     chat_id: chat_id,
  //     chat_type: chat_type,
  //   );

  //   if (databaseLib.databaseType == DatabaseType.supabase) {
  //     await databaseLib.supabase_db.update(
  //       from: getFromTypeSupabase(
  //         bot_user_id: tgClientData.client_user_id!,
  //         chat_id: chat_id,
  //         chat_type: chat_type,
  //       ),
  //       dataOrigin: {
  //         "account_id": account_id_procces,
  //       },
  //       dataUpdate: {"data": newData},
  //     );
  //     return true;
  //   }

  //   if (databaseLib.databaseType == DatabaseType.isar) {
  //     isar_scheme.ChatData? chat_data_procces = await isar_db(
  //       tgClientData: tgClientData,
  //       chat_id: chat_id,
  //       chat_type: chat_type,
  //     ).chatDatas.filter().account_idEqualTo(account_id_procces).findFirst();
  //     if (chat_data_procces == null) {
  //       isar_scheme.ChatData chat_data_new_procces = isar_scheme.ChatData();
  //       chat_data_new_procces.account_id = account_id_procces;
  //       chat_data_new_procces.data = json.encode(newData);
  //       await isar_db(
  //         tgClientData: tgClientData,
  //         chat_id: chat_id,
  //         chat_type: chat_type,
  //       ).writeTxn(() async {
  //         await isar_db(
  //           tgClientData: tgClientData,
  //           chat_id: chat_id,
  //           chat_type: chat_type,
  //         ).chatDatas.put(chat_data_new_procces);
  //       });
  //       return true;
  //     }
  //     chat_data_procces.data = json.encode(newData);
  //     await isar_db(
  //       tgClientData: tgClientData,
  //       chat_id: chat_id,
  //       chat_type: chat_type,
  //     ).writeTxn(() async {
  //       await isar_db(
  //         tgClientData: tgClientData,
  //         chat_id: chat_id,
  //         chat_type: chat_type,
  //       ).chatDatas.put(chat_data_procces);
  //     });
  //     return true;
  //   }
  //   return false;
  // }

  Future<List<Map>> getChats({
    required String chat_type,
    required Map defaultValue,
    required tg_scheme.TgClientData tgClientData,
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    String from = "telegram",
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   Map? es = await databaseLib.supabase_db.getMatch(
    //     from: from,
    //     query: {
    //       "client_user_id": tgClientData.client_user_id,
    //     },
    //     columns: [chat_type],
    //   );
    //   if (es == null) {
    //     await databaseLib.supabase_db.add(from: from, data: {
    //       ...tgClientData.toJson(),
    //       chat_type: [defaultValue]
    //     });
    //     return [defaultValue];
    //   }
    //   if (es.containsKey(chat_type)) {
    //     return (es[chat_type] as List).cast<Map>();
    //   } else {
    //     return [defaultValue];
    //   }
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.TgClientData? get_data_procces = await databaseLib
        .isar_db.tgClientDatas
        .get(tgClientData.client_user_id!);
    if (get_data_procces == null) {
      isar_scheme.TgClientData tg_client_data_isar = isar_scheme.TgClientData();
      tg_client_data_isar.client_user_id = tgClientData.client_user_id!;

      await databaseLib.isar_db.writeTxn(
        () async {
          await databaseLib!.isar_db.tgClientDatas.put(tg_client_data_isar);
        },
        silent: true,
      );
      return [defaultValue];
    }
    // }

    return [].cast<Map>();
  }

  Future<bool> saveChats({
    required String chat_type,
    required List<Map> value,
    required tg_scheme.TgClientData tgClientData,
    String from = "telegram",
    DatabaseDataType databaseDataType = DatabaseDataType.bot,
    DatabaseLib? databaseLib,
  }) async {
    databaseLib ??= database_lib;
    // if (databaseLib.databaseType == DatabaseType.supabase) {
    //   late Map dataUpdate = {};
    //   dataUpdate[chat_type] = value;
    //   dataUpdate.updateVoid(data: tgClientData.toJson());
    //   await databaseLib.supabase_db.update(
    //     from: from,
    //     dataOrigin: {
    //       "client_user_id": tgClientData.client_user_id,
    //     },
    //     dataUpdate: dataUpdate,
    //   );
    //   return true;
    // }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.TgClientData? get_data_procces = await databaseLib
        .isar_db.tgClientDatas
        .get(tgClientData.client_user_id!);
    if (get_data_procces == null) {
      isar_scheme.TgClientData tg_client_data_isar = isar_scheme.TgClientData();
      tg_client_data_isar.client_user_id = tgClientData.client_user_id!;

      await databaseLib.isar_db.writeTxn(
        () async {
          await databaseLib!.isar_db.tgClientDatas.put(tg_client_data_isar);
        },
        silent: true,
      );
      return true;
    }

    await databaseLib.isar_db.writeTxn(
      () async {
        await databaseLib!.isar_db.tgClientDatas.put(get_data_procces);
      },
      silent: true,
    );
    return true;
    // }
  }

  Future<void> checkChat({
    required String chat_type,
    required List<Map> getDatas,
    required Map getData,
    required int client_user_id,
  }) async {
    try {
      if (getData["admins"] is List == false) {
        getData["admins"] = [];
      }
      if (getData["admin_user_ids"] is List == false) {
        getData["admin_user_ids"] = [];
      }
      if (getData["chatbots"] is List == false) {
        getData["chatbots"] = [];
      }
      if (getData["state"] is Map == false) {
        getData["state"] = {};
      }
      if (getData["delay_spam"] is Map == false) {
        getData["delay_spam"] = {};
        if (getData["delay_spam"]["responds"] is List == false) {
          getData["delay_spam"]["responds"] = [];
        }
      }
      if (getData["auto_forwards"] is List == false) {
        getData["auto_forwards"] = [];
      }
      if (getData["users"] is List == false) {
        getData["users"] = [];
      }
      if (getData["check_user"] is Map == false) {
        getData["check_user"] = DefaultDataBase.check_user;
      }
      if (getData["content_message"] is Map == false) {
        getData["content_message"] = DefaultDataBase.content_message;
      }

      if (getData["content_message_option"] is Map == false) {
        getData["content_message_option"] =
            DefaultDataBase.content_message_option;
      }
      if (getData["media"] is Map == false) {
        getData["media"] = DefaultDataBase.media;
      }
      if (getData["media_more"] is Map == false) {
        getData["media_more"] = DefaultDataBase.media_more;
      }

      if (getData["service_message"] is Map == false) {
        getData["service_message"] = DefaultDataBase.service_message;
      }
    } catch (e) {}

    // if (isFound) {
    //   try {
    //     await saveChats(chat_type: chat_type, value: getDatas, client_user_id: client_user_id);
    //   } catch (e) {}
    // }
  }
}
