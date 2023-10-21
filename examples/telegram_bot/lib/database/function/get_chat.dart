// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unused_import

import 'package:isar/isar.dart';
import 'package:telegram_bot/database/database_core.dart';
import 'package:telegram_bot/database/database_data_type.dart';
import 'package:telegram_bot/database/database_type.dart';
import 'package:telegram_bot/database/default_database.dart';
import 'package:telegram_bot/database/update/database_update.dart';
import 'package:telegram_bot/database/update/database_update_telegram_userbot.dart';
import 'package:telegram_bot/telegram_bot.dart';

import 'package:general_lib/general_lib.dart';
import 'package:supabase_client/supabase_client.dart' as supabase_client;

import "package:telegram_bot/scheme/scheme.dart" as tg_scheme;
import "package:telegram_bot/database/scheme/scheme.dart"
    as isar_scheme;
import 'package:telegram_bot/white_list.dart';

extension FunctionDatabaseGetChat on Database {
  Future<tg_scheme.ChatData> getChat({
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
    // String account_id_procces = getAccountId(
    // bot_user_id: tgClientData.client_user_id!,
    // chat_id: chat_id,
    // chat_type: chat_type,
    // );
    if ((database_type == DatabaseType.supabase)) {
      Map? es = await supabase_db.from("chat").select<Map?>().match({
        "chat_id": chat_id,
        "room_chat_id": room_chat_id,
        "client_user_id": tgClientData.client_user_id,
      }).maybeSingle();

      if (es == null) {
        return await onNotFoundData();
      }

      tg_scheme.ChatData chatData = tg_scheme.ChatData(es["data"] as Map);

      if (["free", "regular", "premium", "ultra"]
              .contains(chatData.plan_type ?? "") ==
          false) {
        chatData["plan_type"] = "free";
      }

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
      if (["free", "regular", "premium", "ultra"]
              .contains(chatData.plan_type ?? "") ==
          false) {
        chatData["plan_type"] = "free";
      }
      return chatData;
    }

    try {
      tg_scheme.ChatData chatData = tg_scheme.ChatData(decyprtData(
        data: chat_data_procces.data,
        databaseLib: databaseLib,
        tgClientData: tgClientData,
      ));

      if (["free", "regular", "premium", "ultra"]
              .contains(chatData.plan_type ?? "") ==
          false) {
        chatData["plan_type"] = "free";
      }

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

      if (["free", "regular", "premium", "ultra"]
              .contains(chatData.plan_type ?? "") ==
          false) {
        chatData["plan_type"] = "free";
      }

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
}
