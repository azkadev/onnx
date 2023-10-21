// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unused_import

import 'package:telegram_bot/database/update/database_update.dart';
import 'package:telegram_bot/database/update/database_update_telegram_userbot.dart';
import 'package:telegram_bot/telegram_bot.dart';

import 'package:general_lib/general_lib.dart';
import 'package:supabase_client/supabase_client.dart' as supabase_client;

import "package:telegram_bot/scheme/scheme.dart" as tg_scheme;
import "package:telegram_bot/database/scheme/scheme.dart"
    as isar_scheme;
import 'package:isar/isar.dart';
import 'package:telegram_bot/database/database_core.dart';
import 'package:telegram_bot/database/database_data_type.dart';
import 'package:telegram_bot/database/database_type.dart';
import 'package:telegram_bot/database/default_database.dart';
import 'package:telegram_bot/white_list.dart';

extension FunctionDatabaseSaveChat on Database {
  Future<bool> saveChat({
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

    if ((database_type == DatabaseType.supabase)) {
      Map? chat_data = await supabase_db.from("chat").select<Map?>().match({
        "chat_id": chat_id,
        "room_chat_id": room_chat_id,
        "client_user_id": tgClientData.client_user_id,
      }).maybeSingle();
      if (chat_data != null) {
        await supabase_db
            .from("chat")
            .update({
              "data": newData,
            })
            .match({
              "chat_id": chat_id,
              "room_chat_id": room_chat_id,
              "client_user_id": tgClientData.client_user_id,
            })
            .select()
            .maybeSingle();
      } else {
        await supabase_db
            .from("chat")
            .insert({
              "chat_id": chat_id,
              "room_chat_id": room_chat_id,
              "client_user_id": tgClientData.client_user_id,
              "data": newData,
            })
            .select()
            .maybeSingle();
      }
      return true;
    }

    // if (databaseLib.databaseType == DatabaseType.isar) {
    isar_scheme.ChatData? chat_data_procces = await isar_db(
      tgClientData: tgClientData,
      chat_id: chat_id,
      chat_type: chat_type,
    )
        .chatDatas
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
      await isar_db(
        tgClientData: tgClientData,
        chat_id: chat_id,
        chat_type: chat_type,
      ).writeTxn(
        () async {
          await isar_db(
            tgClientData: tgClientData,
            chat_id: chat_id,
            chat_type: chat_type,
          ).chatDatas.put(chat_data_new_procces);
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
    await isar_db(
      tgClientData: tgClientData,
      chat_id: chat_id,
      chat_type: chat_type,
    ).writeTxn(
      () async {
        await isar_db(
          tgClientData: tgClientData,
          chat_id: chat_id,
          chat_type: chat_type,
        ).chatDatas.put(chat_data_procces);
      },
      silent: true,
    );
    return true;
    // }
  }
}
