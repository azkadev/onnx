// ignore_for_file: non_constant_identifier_names, empty_catches, argument_type_not_assignable_to_error_handler, unused_label, unused_local_variable, unnecessary_brace_in_string_interps, unnecessary_string_interpolations, unused_import

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'dart:math';
import 'dart:typed_data';

import 'package:telegram_client/telegram_client/telegram_client_core.dart';
import 'package:telegram_client/telegram_client/telegram_client_data.dart';
import 'package:telegram_client/telegram_client/telegram_client_type.dart';
import 'package:telegram_client/telegram_client/update_telegram_client.dart';
import 'package:telegram_client/util/util.dart';
import 'package:telegram_bot/database/database_core.dart';
import 'package:telegram_bot/database/default_database.dart';
import 'package:telegram_bot/database/function/get_chat.dart';
import 'package:telegram_bot/extension/map.dart';
import 'package:telegram_bot/extension/string.dart';
import 'package:telegram_bot/scheme/chat_data.dart';
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

Future<Map?> inlineQuery(
  Map update, {
  required UpdateTelegramClient updateTelegramClient,
  required TelegramClient tg,
  required TgClientData tgClientData,
  required Database database,
}) async {
  // int mainBotUserId = int.parse(tg.token_bot.split(":")[0]);

  int mainBotUserId =
      int.tryParse(tg.telegramBotApi.token_bot.split(":")[0]) ?? 0;
  // Box dbBot = await Hive.openBox(bot_user_id.toString());
  try {
    if (update["chat_type"] is String) {
      update["chat_type"] = (update["chat_type"] as String)
          .replaceAll(RegExp(r"super", caseSensitive: false), "");
    }
  } catch (e) {}
  if (mainBotUserId == tgClientData.client_user_id) {}
  if (tgClientData.client_user_id == null) {
    return null;
  }

  if (update["chat"] is Map == false) {
    update["chat"] = update["from"];
  }
  var msg = update;
  var inlineQuery = update;
  var fromId = inlineQuery["from"]["id"];
  var from_id = inlineQuery["from"]["id"];
  late String chatType = "";
  try {
    chatType = inlineQuery["chat_type"]
        .toString()
        .replaceAll(RegExp(r"super", caseSensitive: false), "");
  } catch (e) {}
  if (chatType == "sender") {
    chatType = "private";
  }
  Map msg_auto_chat = {
    "id": tgClientData.client_user_id,
    "is_bot": true,
  };
  int msg_auto_chat_id = msg_auto_chat["id"];

  int room_chat_id = tgClientData.client_user_id ?? 0;

  String text = "";

  try {
    text = inlineQuery["query"];
  } catch (e) {}

  var chat_type = "private";
  Map parameterPatch = {};
  FutureOr<Map> request({
    required String method,
    Map? parameters,
    bool is_form = false,
    bool is_parse_mode = true,
    int? clientId,
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
    if (is_parse_mode) {
      parameters["parse_mode"] = "html";
    } else {}
    parameters["allow_sending_without_reply"] = true;
    if (parameters["is_natural"] == true &&
        RegExp("^(send)", caseSensitive: false).hashData(method)) {
      String request_action = "typing";

      if (parameters.containsKey("document")) {
        request_action = "upload_document";
      }
      if (parameters.containsKey("sticker")) {
        request_action = "choose_sticker";
      }
      if (parameters.containsKey("voice")) {
        request_action = "record_voice";
      }

      if (parameters.containsKey("photo")) {
        request_action = "upload_photo";
      }

      if (parameters.containsKey("video")) {
        request_action = "upload_video";
      }
      await tg.request(
        parameters: {
          "@type": "sendChatAction",
          "chat_id": parameters["chat_id"],
          "action": request_action,
        },
        telegramClientData: telegramClientData,
        is_form: is_form,
      );

      String request_text = "";

      if (parameters["text"] is String) {
        request_text = parameters["text"];
      }
      if (parameters["caption"] is String) {
        request_text = parameters["caption"];
      }

      for (var i = 0; i < request_text.length; i++) {
        await Future.delayed(Duration(milliseconds: 1));
      }

      return (await tg.request(
        // method,
        parameters: parameters,

        telegramClientData: telegramClientData,
        // tokenBot: tokenBot,
        is_form: is_form,
        // isAutoExtendMessage: true,
      ));
    }
    return (await tg.request(
      // method,
      parameters: parameters,

      telegramClientData: telegramClientData,

      is_form: is_form,
      // isAutoExtendMessage: true,
    ));
  }

  ChatData get_chat_data = await database.getChat(
    chat_type: chat_type,
    chat_id: msg_auto_chat_id,
    value: msg_auto_chat,
    isSaveNotFound: false,
    tgClientData: tgClientData,
    room_chat_id: room_chat_id,
    onNotFoundData: () async {
      return ChatData.create(id: 0);
    },
  );

  if (get_chat_data.id == 0) {
    List inlineResults = [
      {
        "id": generateUuid(10),
        "type": "article",
        "title": "Maaf",
        "description": "Error Message",
        "input_message_content": {
          "message_text":
              "Maaf data kamu tidak ada di database kami\n\nSilahkan Tap me lalu Tap inline keyboard lagi ya",
          "parse_mode": "html",
        },
        "reply_markup": {
          "inline_keyboard": [
            [
              {
                "text": "Tap Me",
                "url":
                    "https://t.me/${tgClientData.client_username}?start=cmd_start",
              }
            ],
            [
              {
                "text": "Inline Keyboard",
                "switch_inline_query_current_chat": text,
              }
            ]
          ]
        }
      }
    ];
    return await request(
      method: "answerInlineQuery",
      parameters: {
        "inline_query_id": inlineQuery["id"],
        "results": inlineResults,
      },
    );
  } else {
    try {
      get_chat_data.rawData
          .updateVoid(data: DefaultDataBase.initData(isUser: false));
    } catch (e) {}
  }

  ChatData get_user_data = await database.getChat(
    chat_type: "private",
    chat_id: from_id,
    value: msg["from"],
    isWithoutFetch: (chat_type != "private"),
    tgClientData: tgClientData,
    room_chat_id: room_chat_id,
    onNotFoundData: () async {
      return ChatData.create(id: 0);
    },
  );
  if (get_user_data.id == 0) {
    List inlineResults = [
      {
        "id": generateUuid(10),
        "type": "article",
        "title": "Maaf",
        "description": "Error Message",
        "input_message_content": {
          "message_text":
              "Maaf data kamu tidak ada di database kami\n\nSilahkan Tap me lalu Tap inline keyboard lagi ya",
          "parse_mode": "html",
        },
        "reply_markup": {
          "inline_keyboard": [
            [
              {
                "text": "Tap Me",
                "url":
                    "https://t.me/${tgClientData.client_username}?start=cmd_start",
              }
            ],
            [
              {
                "text": "Inline Keyboard",
                "switch_inline_query_current_chat": text,
              }
            ]
          ]
        }
      }
    ];
    return await request(
      method: "answerInlineQuery",
      parameters: {
        "inline_query_id": inlineQuery["id"],
        "results": inlineResults,
      },
    );
  } else {
    try {
      get_user_data.rawData
          .updateVoid(data: DefaultDataBase.initData(isUser: true));
    } catch (e) {}
  }

  Args text_args = Args(text
      .split("\n")
      .join(" ")
      .split(" ")
      .where((element) => element.isNotEmpty)
      .toList());

  Args args =
      Args(text.split(" ").where((element) => element.isNotEmpty).toList());

  String command = args[0] ?? "";
  int command_chat_id = int.tryParse(command) ?? 0;
  int command_user_id = int.tryParse(args.after(command) ?? "0") ?? 0;
  if (command_chat_id != 0) {
    args.arguments.removeAt(0);
    if (command_user_id != 0) {
      args.arguments.removeAt(0);
    }
    command = args[0] ?? "";
  }
  String sub_command = args.after(command) ?? "";
  String sub_sub_command = args.after(sub_command) ?? "";

  Future<Map> mainMenu() async {
    String message = """
Main Menu
""";
    List<Map> inlineResults = [
      {
        "id": generateUuid(10),
        "type": "article",
        "title": "Main Menu",
        "description": "menampilkan feature menu bot",
        "input_message_content": {
          "message_text": message,
          "parse_mode": "html",
        },
        "reply_markup": {
          "inline_keyboard": [
            [
              {
                "text": "Main Menu",
                "callback_data": "inline_${from_id} main_menu",
              },
            ],
          ]
        }
      }
    ];
    return await request(method: "answerInlineQuery", parameters: {
      "inline_query_id": inlineQuery["id"],
      "results": inlineResults,
    });
  }

  try {} catch (e, stack) {
    List inlineResults = [
      {
        "id": generateUuid(10),
        "type": "article",
        "title": "Error Message",
        "description": "Error Message",
        "input_message_content": {
          "message_text": "${(e)}, ${Trace.from(stack).terse.toString()}",
          // "parse_mode": "html",
        }
      }
    ];
    return await request(
      method: "answerInlineQuery",
      parameters: {
        "inline_query_id": inlineQuery["id"],
        "results": inlineResults,
      },
      is_parse_mode: false,
    );
  }

  return null;
//
}
