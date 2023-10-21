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

Future<Map?> updateMessage(
  Map update, {
  required UpdateTelegramClient updateTelegramClient,
  required TelegramClient tg,
  required TgClientData tgClientData,
  required Database database,
}) async {
  int main_bot_user_id =
      int.tryParse(tg.telegramBotApi.token_bot.split(":")[0]) ?? 0;
  if (update["chat"]["type"] == "channel") {
    update["from"] = update["sender_chat"];
  }
  late bool isMainBot = false;
  if (main_bot_user_id == tgClientData.client_user_id) {
    isMainBot = true;
  }

  var msg = update;
  int msg_id = msg["message_id"];
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

  int from_id = msg["from"]["id"];
  int chat_id = msg["chat"]["id"];

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

  String chat_title = () {
    try {
      String msg_chat_title = "";
      if (msg_chat["title"] is String) {
        msg_chat_title += msg_chat["title"];
      }
      if (msg_chat["first_name"] is String) {
        msg_chat_title += msg_chat["first_name"];
      }
      if (msg_chat["last_name"] is String) {
        msg_chat_title += " ${msg_chat["last_name"]}";
      }

      if (msg_chat["last_name"] is String) {
        msg_chat_title += " ${msg_chat["last_name"]}";
      }

      return msg_chat_title;
    } catch (e) {}
    return "";
  }();
  var stringChatId =
      msg["chat"]["id"].toString().replaceAll(RegExp(r"(-100|-)"), "");

  Map parameterPatch = {};
  if (msg["message_thread_id"] is int) {
    parameterPatch["message_thread_id"] = msg["message_thread_id"];
    if (updateTelegramClient.telegramClientData.telegramClientType ==
        TelegramClientType.tdlib) {
      if (msg["chat"]["detail"] is Map) {
        if (msg["chat"]["detail"]["is_forum"] != true) {
          parameterPatch.removeByKeys(["message_thread_id"]);
        }
      }
    }
  }

  // ignore: unused_element
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

  if (RegExp(r"^((/|\.|!)ping)$", caseSensitive: false).hasMatch(text)) {
    String convertToAgo(int? timestamp) {
      try {
        Duration diff = DateTime.now()
            .copyWith(millisecond: 0, microsecond: 0)
            .difference(DateTime.fromMillisecondsSinceEpoch(
                timestamp ?? DateTime.now().millisecondsSinceEpoch));
        if (diff.inDays >= 1) {
          return '${diff.inDays} day(s) ago';
        } else if (diff.inHours >= 1) {
          return '${diff.inHours} hour(s) ago';
        } else if (diff.inMinutes >= 1) {
          return '${diff.inMinutes} minute(s) ago';
        } else if (diff.inSeconds >= 1) {
          return '${diff.inSeconds} second(s) ago';
        } else if (diff.inMilliseconds >= 1) {
          return '${diff.inMilliseconds} millisecond(s) ago';
        } else if (diff.inMicroseconds >= 1) {
          return '${diff.inMicroseconds} microsecond(s) ago';
        } else {
          return "just now";
        }
      } catch (e) {
        return 'just now';
      }
    }

    return await request(method: "sendMessage", parameters: {
      "chat_id": chat_id,
      "text": "🏓️ Pong: ${convertToAgo((msg["date"] * 1000))}"
          .autoVariableTelegram(msg, tgClientData: tgClientData),
    });
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
        try {
          msg_auto_chat.updateForce(
              data: database.configRuntime.config_force.toJson());
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

  try {
    get_chat_data.rawData
        .updateForce(data: database.configRuntime.config_force.toJson());
  } catch (e) {}

  bool isWithoutFetch_user = false;

  if (chat_type == "channel") {
    isWithoutFetch_user = true;
  }

  ChatData get_user_data = await database.getChat(
    chat_type: chat_type_private,
    chat_id: from_id,
    value: msg_auto_from,
    isSaveNotFound: false,
    isWithoutFetch: isWithoutFetch_user,
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
          isWithoutSave: isWithoutFetch_user,
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
          isWithoutSave: isWithoutFetch_user,
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
  if (get_chat_data["wallet"] is Map == false) {
    get_chat_data["wallet"] = {};
  }

  try {
    if (get_user_data.state.chat_id == chat_id &&
        get_user_data.state.user_id == from_id) {
      try {
        if (get_user_data.state.is_delete_msg == true) {
          try {
            await request(
              method: "deleteMessage",
              parameters: {
                "chat_id": chat_id,
                "message_id": msg_id,
              },
            );
          } catch (e) {}
        }

        if (get_user_data["state"]["data"] is Map == false) {
          get_user_data["state"]["data"] = {};
        }
        if (get_user_data.state.message_id != null &&
            get_user_data.state.message_id != 0 &&
            get_user_data.state.is_without_delete_msg_me != true) {
          try {
            await request(method: "deleteMessage", parameters: {
              "chat_id": chat_id,
              "message_id": get_user_data.state.message_id
            });
          } catch (e) {}
        }
        if (get_user_data.state.setting != null) {}
        get_user_data["state"] = {};
        await database.saveChat(
          chat_type: chat_type_private,
          chat_id: from_id,
          newData: get_user_data.toJson(),
          tgClientData: tgClientData,
          room_chat_id: room_chat_id,
        );
        return await request(method: "sendMessage", parameters: {
          "chat_id": chat_id,
          "text":
              "State ${get_user_data.state.setting} tidak ada di code kami, data state berhasil di reset",
        });
      } catch (e, stack) {
        print(stack);
        get_user_data["state"] = {};

        await database.saveChat(
          chat_type: chat_type_private,
          chat_id: from_id,
          newData: get_user_data.toJson(),
          tgClientData: tgClientData,
          room_chat_id: room_chat_id,
        );
        return await request(method: "sendMessage", parameters: {
          "chat_id": chat_id,
          "text": "State Error: ${e.toString()} ",
        });
      }
    }

    if (get_chat_data.state.chat_id == chat_id &&
        (get_chat_data.state.user_id == from_id ||
            (msg["sender_chat"] is Map &&
                msg["sender_chat"]["id"] == chat_id))) {
      try {
        if (get_chat_data.state.is_delete_msg == true) {
          try {
            await request(method: "deleteMessage", parameters: {
              "chat_id": chat_id,
              "message_id": msg_id,
            });
          } catch (e) {}
        }

        if (get_chat_data.state.message_id != null &&
            get_chat_data.state.message_id != 0) {
          try {
            await request(method: "deleteMessage", parameters: {
              "chat_id": chat_id,
              "message_id": get_chat_data.state.message_id
            });
          } catch (e) {}
        }
        if (get_chat_data.state.setting != null) {}
        get_chat_data["state"] = {};
        await database.saveChat(
          chat_type: chat_type,
          chat_id: msg_auto_chat_id,
          newData: get_chat_data.toJson(),
          tgClientData: tgClientData,
          room_chat_id: room_chat_id,
        );
        return await request(method: "sendMessage", parameters: {
          "chat_id": chat_id,
          "text":
              "State ${get_user_data.state.setting} tidak ada di code kami, data state berhasil di reset",
        });
      } catch (e) {
        get_chat_data["state"] = {};

        await database.saveChat(
          chat_type: chat_type,
          chat_id: msg_auto_chat_id,
          newData: get_chat_data.toJson(),
          tgClientData: tgClientData,
          room_chat_id: room_chat_id,
        );
        return await request(method: "sendMessage", parameters: {
          "chat_id": chat_id,
          "text": "State Error: ${e.toString()}",
        });
      }
    }
  } catch (e) {}
  return null;
}
