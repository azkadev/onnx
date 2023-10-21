// ignore_for_file: non_constant_identifier_names, empty_catches, argument_type_not_assignable_to_error_handler, unused_label, unused_local_variable, unnecessary_brace_in_string_interps, unnecessary_string_interpolations, unused_import

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';
import 'dart:typed_data';

import 'package:telegram_bot/database/default_database.dart';
import 'package:telegram_bot/database/function/get_chat.dart';
import 'package:telegram_bot/database/function/save_chat.dart';
import 'package:telegram_bot/extension/map.dart';
import 'package:telegram_bot/scheme/chat_data.dart';
import 'package:telegram_client/telegram_client/telegram_client_core.dart';
import 'package:telegram_client/telegram_client/telegram_client_data.dart';
import 'package:telegram_client/telegram_client/telegram_client_type.dart';
import 'package:telegram_client/telegram_client/update_telegram_client.dart';
import 'package:telegram_client/util/util.dart';
import 'package:telegram_bot/database/database_core.dart';
import 'package:telegram_bot/extension/string.dart';
import 'package:telegram_bot/scheme/tg_client_data.dart';
import 'package:telegram_bot/telegram_bot.dart';
// import 'package:brainly/brainly.dart';
import 'package:general_lib/general_lib.dart';
import 'package:stack_trace/stack_trace.dart';
import 'package:supabase/supabase.dart';

import 'package:xendit/xendit.dart';
import 'package:telegram_bot/payment/scheme/scheme.dart'
    as tg_payment_scheme;

import 'package:supabase_client/supabase_client.dart' as supabase_client;
import "package:path/path.dart" as path;

Future<Map?> callbackQuery(
  Map update, {
  required UpdateTelegramClient updateTelegramClient,
  required TelegramClient tg,
  required Database database,
  // required ProductionType productionType,
  // required PaymentTg paymentTg,
  // required Crypto cryptoTg,
  required TgClientData tgClientData,
}) async {
  int main_bot_user_id =
      int.tryParse(tg.telegramBotApi.token_bot.split(":")[0]) ?? 0;

  bool isMainBot = false;
  if (main_bot_user_id == tgClientData.client_user_id) {
    isMainBot = true;
  }

  if (update["message"] is Map == false) {
    update["message"] = {
      "message_id": 0,
      "from": {
        "id": 0,
        "first_name": "",
        "last_name": "",
        "username": "",
        "type": "private",
      },
      "chat": {
        "id": 0,
        "first_name": "",
        "last_name": "",
        "username": "",
        "type": "private",
      },
      "date": 0,
      "text": ""
    };
  }
  if (update["message"]["chat"] is Map == false) {
    update["message"]["chat"] = {
      "id": 0,
      "first_name": "",
      "last_name": "",
      "username": "",
      "type": "private",
    };
  }
  if (update["message"]["from"] is Map == false) {
    update["message"]["from"] = {
      "id": 0,
      "first_name": "",
      "last_name": "",
      "username": "",
      "type": "private",
    };
  }
  update["from_bot"] = update["message"]["from"];
  var cb = update;
  var msg = update["message"];
  msg["from"] = update["from"];
  var chat_id = msg["chat"]["id"];
  int msg_id = msg["message_id"];
  late String inline_message_id = "";
  if (cb["inline_message_id"] is String) {
    inline_message_id = cb["inline_message_id"];
  } else {
    inline_message_id = "";
  }
  late String text = "";
  late String msg_caption = "";
  if (msg["text"] is String) {
    text = msg["text"];
  }
  late String caption = "";
  if (msg["caption"] is String) {
    caption = msg["caption"];
  }
  if (text.isNotEmpty) {
    msg_caption = text;
  }
  if (caption.isNotEmpty) {
    msg_caption = caption;
  }
  int from_id = msg["from"]["id"];
  String chat_title = "";
  if (msg["chat"]["title"] is String) {
    chat_title = msg["chat"]["title"];
  }

  Map msg_from = msg["from"];
  Map msg_chat = msg["chat"];

  Map msg_auto_from = {
    "id": msg_from["id"],
  };

  msg_from.forEach((key, value) {
    msg_auto_from[key] = value;
  });

  Map msg_auto_chat = {
    "id": 0,
  };
  Map msg_bot = {
    "id": tgClientData.client_user_id,
    "is_bot": true,
  };

  String chat_type = msg["chat"]["type"]
      .toString()
      .replaceAll(RegExp(r"super", caseSensitive: false), "");
  String chat_type_private = "private";
  if (chat_type == chat_type_private) {
    msg_bot.forEach((key, value) {
      msg_auto_chat[key] = value;
    });
  } else {
    msg_chat.forEach((key, value) {
      msg_auto_chat[key] = value;
    });
  }

  int msg_auto_chat_id = msg_auto_chat["id"];

  int room_chat_id = chat_id;

  if (RegExp(r"^(private)$", caseSensitive: false).hashData(chat_type)) {
    room_chat_id = tgClientData.client_user_id ?? 0;
  }

  var stringChatId =
      msg["chat"]["id"].toString().replaceAll(RegExp(r"(-100|-)"), "");
  String data = cb["data"];
  String subData = cb["data"]
      .toString()
      .replaceAll(RegExp(r"(.*:|=.*)", caseSensitive: false), "");
  String subDataId = cb["data"]
      .toString()
      .replaceAll(RegExp(r"(.*=|\-.*)", caseSensitive: false), "");
  String subSubData = cb["data"]
      .toString()
      .replaceAll(RegExp(r"(.*\-)", caseSensitive: false), "");

  Map parameterPatch = {};
  FutureOr<Map> request({
    required String method,
    Map? parameters,
    bool is_form = false,
    bool is_parse_mode = true,
    bool isVoid = false,
    TelegramClientData? telegramClientData,
    // String? tokenBot,
  }) async {
    parameters ??= {};
    parameters["@type"] = method;
    telegramClientData ??= updateTelegramClient.telegramClientData;
    // tokenBot ??= tgClientData.client_token;
    try {
      parameters.addAll(parameterPatch);
    } catch (e) {}
    if (cb["inline_message_id"] is String) {
      parameters.remove("chat_id");
      parameters.remove("message_id");
      parameters["inline_message_id"] = cb["inline_message_id"];
    }
    if (RegExp("answerCallbackQuery", caseSensitive: false).hasMatch(method)) {
      if (parameters["text"] is String) {
        String text = parameters["text"];
        if (text.length >= 200) {
          var messages = "";
          List<String> messagesJson = TgUtils.splitByLength(text, 200);
          List result = [];
          for (var i = 0; i < messagesJson.length; i++) {
            var loopData = messagesJson[i];
            try {
              await Future.delayed(Duration(seconds: 2));
              parameters["text"] = loopData;
              if (i != 0) {
                method = "sendMessage";
              }
              parameters["@type"] = method;
              var res = (await tg.request(
                // method,
                parameters: parameters,

                telegramClientData: telegramClientData,

                is_form: is_form,
                // isAutoExtendMessage: true,
              ));
              result.add(res);
            } catch (e) {
              result.add(e);
            }
          }
          return {"result": result};
        }
      }
    }
    if (parameters["text"] is String) {
      String text = parameters["text"];
      if (text.length >= 4096) {
        var messages = "";
        List<String> messagesJson = TgUtils.splitByLength(text, 4096);
        List result = [];
        for (var i = 0; i < messagesJson.length; i++) {
          var loopData = messagesJson[i];
          try {
            await Future.delayed(Duration(seconds: 2));
            parameters["text"] = loopData;
            if (RegExp("(editMessageText)", caseSensitive: false)
                .hasMatch(method)) {
              if (i != 0) {
                method = "sendMessage";
              }
            }
            parameters["@type"] = method;
            var res = (await tg.request(
              // method,
              parameters: parameters,

              telegramClientData: telegramClientData,

              is_form: is_form,
              // isAutoExtendMessage: true,
            ));
            result.add(res);
          } catch (e) {
            result.add(e);
          }
        }
        return {"result": result};
      }
    }

    if (parameters["caption"] is String) {
      String caption = parameters["caption"];
      if (caption.length >= 1024) {
        var messages = "";
        List<String> messagesJson = TgUtils.splitByLength(caption, 1024);
        List result = [];
        for (var i = 0; i < messagesJson.length; i++) {
          var loopData = messagesJson[i];
          try {
            await Future.delayed(Duration(seconds: 2));
            parameters["caption"] = loopData;
            if (RegExp("(editMessageCaption)", caseSensitive: false)
                .hasMatch(method)) {
              if (i != 0) {
                parameters["text"] = loopData;
                method = "sendMessage";
              }
            }
            parameters["@type"] = method;
            var res = (await tg.request(
              // method,
              parameters: parameters,

              telegramClientData: telegramClientData,

              is_form: is_form,
              // isAutoExtendMessage: true,
            ));
            result.add(res);
          } catch (e) {
            result.add(e);
          }
        }

        return {"result": result};
      }
    }

    return (await tg.request(
      // method,
      parameters: parameters,

      telegramClientData: telegramClientData,

      is_form: is_form,
      // isAutoExtendMessage: true,
    ));
  }

  late Map option = {
    "method": "editMessageText",
    "callback_query_id": cb["id"],
    "show_alert": true,
    "chat_id": chat_id,
    "message_id": msg_id,
    "parse_mode": "html",
  };

  if (cb["inline_message_id"] is String) {
    option.remove("chat_id");
    option.remove("message_id");
    option["inline_message_id"] = cb["inline_message_id"];
  }
  if (msg["text"] == null) {
    option["method"] = "editMessageCaption";
  }

  ChatData get_chat_data = await database.getChat(
    chat_type: chat_type,
    chat_id: msg_auto_chat_id,
    value: msg_auto_chat,
    isSaveNotFound: false,
    tgClientData: tgClientData,
    room_chat_id: room_chat_id,
    onNotFoundData: () async {
      try {
        if (chat_type == "private") {
          msg_auto_chat["join_date"] = msg["date"];
          Map getMe = await request(method: "getMe");
          msg_auto_chat.addAll((getMe["result"] as Map));
        } else {
          try {
            Map getChatAdministrators = await request(
                method: "getChatAdministrators",
                parameters: {"chat_id": chat_id});
            if (getChatAdministrators["ok"] == true &&
                getChatAdministrators["result"] is List) {
              List admins_array = (getChatAdministrators["result"] as List);
              List id_admins =
                  admins_array.map((res) => res["user"]["id"]).toList();
              msg_auto_chat["admins"] = admins_array;
            }
          } catch (e) {}
        }

        try {
          msg_auto_chat.updateVoid(
              data: DefaultDataBase.initData(isUser: false));
        } catch (e) {}
        ChatData chatData = ChatData(msg_auto_chat);
        await database.saveChat(
          chat_type: chat_type,
          chat_id: msg_auto_chat_id,
          newData: msg_auto_chat,
          tgClientData: tgClientData,
          room_chat_id: room_chat_id,
        );
        return chatData;
      } catch (e) {
        ChatData chatData = ChatData(msg_auto_chat);
        await database.saveChat(
          chat_type: chat_type,
          chat_id: msg_auto_chat_id,
          newData: msg_auto_chat,
          tgClientData: tgClientData,
          room_chat_id: room_chat_id,
        );
        return chatData;
      }
    },
  );

  try {
    get_chat_data.rawData
        .updateVoid(data: DefaultDataBase.initData(isUser: false));
  } catch (e) {}

  ChatData? get_user_data = await database.getChat(
    chat_type: chat_type_private,
    chat_id: from_id,
    value: msg_auto_from,
    isSaveNotFound: false,
    tgClientData: tgClientData,
    room_chat_id: room_chat_id,
    onNotFoundData: () async {
      try {
        try {
          msg_auto_from.updateVoid(
              data: DefaultDataBase.initData(isUser: true));
        } catch (e) {}
        ChatData chatData = ChatData(msg_auto_from);
        chatData["init_coin"] = get_chat_data.init_coin ?? 0;
        await database.saveChat(
          chat_type: chat_type_private,
          chat_id: from_id,
          newData: msg_auto_from,
          tgClientData: tgClientData,
          room_chat_id: room_chat_id,
        );
        return chatData;
      } catch (e) {
        ChatData chatData = ChatData(msg_auto_from);
        chatData["init_coin"] = get_chat_data.init_coin ?? 0;
        await database.saveChat(
          chat_type: chat_type_private,
          chat_id: from_id,
          newData: msg_auto_from,
          tgClientData: tgClientData,
          room_chat_id: room_chat_id,
        );
        return chatData;
      }
    },
  );
  if (get_user_data["init_coin"] == null) {
    get_user_data["init_coin"] = get_chat_data.init_coin ?? 0;
  }
  try {
    get_user_data.rawData
        .updateVoid(data: DefaultDataBase.initData(isUser: true));
  } catch (e) {}

  return null;
}
