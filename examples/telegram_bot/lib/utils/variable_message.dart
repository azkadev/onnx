// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps, non_constant_identifier_names, empty_catches, unused_local_variable

import 'package:general_lib/general_lib.dart';
import 'package:telegram_bot/scheme/tg_client_data.dart';
import 'package:telegram_client/telegram_client.dart';

String variableMessage(
  String message,
  Map msg,
  Map? database, {
  // Map? getMe,
  required TgClientData tgClientData,
  List<Map<String, String>>? replaces,
}) {
  try {
    // getMe ??= {};
    database ??= {};
    var me_user_id = "";
    var me_first_name = "";
    var me_last_name = "";
    var me_mention = "";
    var me_type = "";

    if (tgClientData["client_user_id"] is int) {
      me_user_id = tgClientData["client_user_id"].toString();
    }

    if (tgClientData["client_username"] is String) {
      me_first_name = tgClientData["client_username"];
    }
    if (tgClientData["client_username"] is String) {}

    if (tgClientData["client_type"] is String) {
      me_type = tgClientData["client_type"];
    }

    try {
      me_mention = TgUtils.parseHtmlLink("${me_first_name} ${me_last_name}",
          "tg://user?id=${me_user_id.toString()}");
    } catch (e) {}

    var userId = "";
    var chatId = "";
    var chatTitle = "";
    var fromType = "";
    var chatType = "";
    var fromUsername = "";
    var chatUsername = "";
    var from_first_name = "";
    var from_last_name = "";
    String from_link = "";
    String from_title = "";
    var typeContent = "";
    var fromMention = "";
    var fromMentionEmoji = "";
    var chatMention = "";

    String chat_link = "";
    var timeAgo = "just now";
    var mentionUser = "";
    if (msg["sender_chat"] is Map) {
      msg["from"] = msg["sender_chat"];
    }
    if (msg["from"] is Map) {
      var from = msg["from"];
      if (msg["from"]["id"] is int) {
        userId = msg["from"]["id"].toString();
      }
      if (from["first_name"] is String) {
        from_first_name = from["first_name"];
      }
      if (from["last_name"] is String) {
        from_last_name = from["last_name"];
      }
      if (from["type"] is String) {
        fromType = from["type"];
      }
      if (from["username"] is String &&
          (from["username"] as String).isNotEmpty) {
        fromUsername = "${from["username"].toString()}";
        if (fromUsername.isNotEmpty) {
          fromMention = "@${fromUsername}";
        }
      }

      if (fromUsername.isEmpty) {
        try {
          fromMention = TgUtils.parseHtmlLink(
              "$from_first_name $from_last_name",
              "tg://user?id=${userId.toString()}");
        } catch (e) {}
      }

      if (fromUsername.isNotEmpty) {
        from_link = "https://t.me/${fromUsername}";
      } else {
        if (chatType == "private") {
          chat_link = "tg://user?id=${userId.toString()}";
        } else {
          chat_link = "https://t.me/c/${userId}/${msg["message_id"] ?? 1}"
              .replaceAll(RegExp("-100|-"), "");
        }
      }
    }
    if (from_first_name.isNotEmpty) {
      from_title = from_first_name;
    }

    if (from_last_name.isNotEmpty) {
      from_title += " ${from_last_name}";
    }

    if (msg["chat"] is Map) {
      var chat = msg["chat"];
      if (msg["chat"]["id"] is int) {
        chatId = msg["chat"]["id"].toString();
      }
      if (msg["chat"]["title"] is String) {
        chatTitle = msg["chat"]["title"];
      }
      if (chat["first_name"] is String) {
        chatTitle = chat["first_name"];
      }
      if (chat["last_name"] is String) {
        chatTitle += " ${chat["last_name"]}";
      }
      if (chat["username"] is String &&
          (chat["username"] as String).isNotEmpty) {
        chatUsername = "${chat["username"].toString()}";
        // chatMention = chatUsername;

        if (chatUsername.isNotEmpty) {
          chatMention = "@${chatUsername}";
        }
      }

      if (msg["chat"]["type"] is String) {
        chatType = msg["chat"]["type"];
      }
      if (chatUsername.isEmpty) {
        try {
          chatMention = TgUtils.parseHtmlLink(
              chatTitle, "tg://user?id=${chatId.toString()}");
        } catch (e) {}
      }

      if (chatUsername.isNotEmpty) {
        chat_link = "https://t.me/${chatUsername}";
      } else {
        if (chatType == "private") {
          chat_link = "tg://user?id=${chatId.toString()}";
        } else {
          chat_link = "https://t.me/c/${chatId}/${msg["message_id"] ?? 1}"
              .replaceAll(RegExp("-100|-"), "");
        }
      }
    }
    if (database["date"] is int) {
      try {
        timeAgo = convertToAgo(database["date"] * 1000);
      } catch (e) {}
    }
    if (msg["type_content"] is String) {
      typeContent = msg["type_content"];
    }
    replaces ??= [];
    List<Map<String, String>> replaceData = [
      {
        "origin": "{me_user_id}",
        "replace": me_user_id,
      },
      {
        "origin": "{me_first_name}",
        "replace": me_first_name,
      },
      {
        "origin": "{me_last_name}",
        "replace": me_last_name,
      },
      {
        "origin": "{me_mention}",
        "replace": me_mention,
      },
      {
        "origin": "{from_id}",
        "replace": userId,
      },
      {
        "origin": "{from_first_name}",
        "replace": from_first_name,
      },
      {
        "origin": "{from_first_name}",
        "replace": from_last_name,
      },
      {
        "origin": "{from_title}",
        "replace": from_title,
      },
      {
        "origin": "{from_type}",
        "replace": fromType,
      },
      {
        "origin": "{from_mention}",
        "replace": fromMention,
      },
      {
        "origin": "{from_mention_emoji}",
        "replace": fromMentionEmoji,
      },
      {
        "origin": "{from_username}",
        "replace": fromUsername,
      },
      {
        "origin": "{from_link}",
        "replace": from_link,
      },
      {
        "origin": "{chat_id}",
        "replace": chatId,
      },
      {
        "origin": "{chat_title}",
        "replace": chatTitle,
      },
      {
        "origin": "{chat_username}",
        "replace": chatUsername,
      },
      {
        "origin": "{chat_mention}",
        "replace": chatMention,
      },
      {
        "origin": "{chat_link}",
        "replace": chat_link,
      },
      {
        "origin": "{chat_type}",
        "replace": chatType,
      },
      {
        "origin": "{time_ago}",
        "replace": timeAgo,
      },
      {
        "origin": "{type_content}",
        "replace": typeContent,
      },
      {
        "origin": "{mention_users}",
        "replace": mentionUser,
      },
      {
        "origin": "{mention_user_([0-9]+)}",
        "replace": mentionUser,
      },
      ...replaces
    ];
    for (var i = 0; i < replaceData.length; i++) {
      var loopData = replaceData[i];
      try {
        message = message.replaceAll(
            RegExp(loopData["origin"] ?? "", caseSensitive: false),
            loopData["replace"] ?? "");
      } catch (e) {}
    }
    // try {
    //   message = message.replaceAll(
    //       RegExp(r"{.*}", caseSensitive: false), "{undefined}");
    // } catch (e) {}

    return message;
  } catch (e) {
    return message;
  }
}
