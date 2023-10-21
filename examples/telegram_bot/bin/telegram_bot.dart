// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unused_local_variable

import 'dart:convert';

import 'package:general_lib/general_lib.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:path/path.dart';
import 'package:telegram_bot/database/database_core.dart';
import 'package:telegram_bot/database/database_type.dart';
import 'package:telegram_bot/scheme/config_runtime.dart';
import 'package:telegram_bot/scheme/tg_client_data.dart';
import 'package:telegram_bot/src/update_callback_query.dart';
import 'package:telegram_bot/src/update_inline_query.dart';
import 'package:telegram_bot/src/update_message.dart';
import 'package:telegram_client/alfred/alfred.dart';
import 'package:telegram_client/telegram_client.dart';
import "dart:io";

void main(List<String> args) async {
  Logger logger = Logger(level: Level.verbose);
  logger.info("Telegram Client");
  Directory directory_tg = Directory(join(Directory.current.path, "tg"));
  if (!directory_tg.existsSync()) {
    await directory_tg.create(recursive: true);
  }

  Directory tg_bot_db_dir = Directory(join(directory_tg.path, "db"));
  if (!tg_bot_db_dir.existsSync()) {
    await tg_bot_db_dir.create(recursive: true);
  }

  String token_bot = "";
  Directory database_directory = Directory(join(directory_tg.path, "client"));

  ConfigRuntime configRuntime = ConfigRuntime({});

  DatabaseLib databaseLib = DatabaseLib(
    directory: tg_bot_db_dir,
  );

  bool is_use_tdlib = configRuntime.environment.is_use_tdlib ?? false;
  print((is_use_tdlib) ? "Tdlib: IYA" : "TDLIB: NO");
  await databaseLib.init();

  // Box db = await Hive.openBox("galaxeus");
  Database database = Database(
    database_type: (configRuntime.database.database_type == "supabase")
        ? DatabaseType.supabase
        : DatabaseType.local,
    botType: BotType.glx,
    database_lib: databaseLib,
    configRuntime: configRuntime,
    is_userbot: false,
    systemInfoFetch: () async {
      String message_data = "System Info";
      try {
        Map res = (json.decode((await Process.run(
          "neofetch",
          [
            "--json",
          ],
        ))
            .stdout as String) as Map);

        message_data = jsonToMessage(res, jsonFullMedia: {});
      } catch (e) {}

      return message_data;
    },
  );

  TelegramClient tg = TelegramClient();

  Alfred app = Alfred();
  tg.on(
    event_name: tg.event_update,
    onUpdate: (UpdateTelegramClient updateTelegramClient) async {
      try {
        await tg.autoSetData(updateTelegramClient);

        Map? update = await updateTelegramClient.update;
        if (update == null) {
          return null;
        }

        if (update["@type"] == "updateAuthorizationState") {
          if (update["authorization_state"] is Map) {
            Map authorization_state = update["authorization_state"];
            if (authorization_state["@type"] ==
                "authorizationStateWaitPhoneNumber") {
              Map res = await tg.invoke(
                parameters: {
                  "@type": "checkAuthenticationBotToken",
                  "token": token_bot,
                },
                telegramClientData: updateTelegramClient.telegramClientData,
              );

              if (res["@type"] == "error") {
                print(
                    "token bot error / salah silahkan isi token bot dengan benar ya");
                exit(0);
              }
              print(res.toStringifyPretty(2));
            }

            if (authorization_state["@type"] == "authorizationStateReady") {
              Map get_me = (await tg.request(
                parameters: {"@type": "getMe"},
                telegramClientData: updateTelegramClient.telegramClientData,
              ))["result"];
              get_me.removeByKeys(["phone_number"]);
              get_me.printPretty(2);
            }
            return null;
          }
          update.printPretty(2);
          return null;
        }

        TgClientData tg_client_data =
            TgClientData(updateTelegramClient.tgClientData());

        if (update["callback_query"] is Map) {
          return await callbackQuery(
            update["callback_query"],
            updateTelegramClient: updateTelegramClient,
            tgClientData: tg_client_data,
            tg: tg,
            database: database,
          );
        }

        if (update["inline_query"] is Map) {
          return await inlineQuery(
            update["inline_query"],
            updateTelegramClient: updateTelegramClient,
            tgClientData: tg_client_data,
            tg: tg,
            database: database,
          );
        }
        if (update["channel_post"] is Map) {
          return await updateMessage(
            update["channel_post"],
            updateTelegramClient: updateTelegramClient,
            tgClientData: tg_client_data,
            tg: tg,
            database: database,
          );
        }
        if (update["message"] is Map) {
          return await updateMessage(
            update["message"],
            updateTelegramClient: updateTelegramClient,
            tgClientData: tg_client_data,
            tg: tg,
            database: database,
          );
        }
      } catch (e, stack) {
        logger.err("${e} ${stack}");
      }
    },
    onError: (error, stackTrace) {},
  );

  Uri telegram_webhook =
      Uri.http("0.0.0.0").replace(port: 8080, path: "/telegram/webhook");

  await tg.init(
    pathTdlib: TgUtils.pathTdlib(),
    is_init_tdlib: (is_use_tdlib),
    telegramClientTdlibOption: TelegramClientTdlibOption(
      clientOption: {
        "database_directory": database_directory.path,
        'files_directory': directory_tg.path,
        "owner_user_id": 1,
        "client_type": "glx",
        "type": "glx",
        "client_title": "",
        "client_username": "",
        "from_bot_user_id": 0,
        "expire_date": 0,
        "version": "",
      },
    ),
    telegramClientTelegramBotApiOption: TelegramClientTelegramBotApiOption(
      tokenBot: () {
        try {
          return configRuntime.data_bots.first.token_bot ?? "";
        } catch (e) {}
        return "";
      }(),
      clientOption: {},
      alfred: app,
      telegramUrlWebhook: telegram_webhook,
    ),
  );
  if (is_use_tdlib) {
    await tg.tdlib.initIsolate();
  } else {
    var server = await app.listen(
      telegram_webhook.port,
      telegram_webhook.host,
    );

    print("Server run: ${server.address.host}:${server.port}");
    tg.telegramBotApi.client_option["api"] = "http://0.0.0.0:9000";

    var res = await Process.run("which", ["telegram-bot-api"]);

    print(res.stdout ?? "Telegram Bot Api tidak ada");

    TelegramBotApiServer tgServer = TelegramBotApiServer();

    List<String> telegram_bot_api_arguments = tgServer.optionsParameters(
      local: true,
      api_id: "94575",
      api_hash: "a3406de8d171bb422bb6ddf3bbd800e2",
      http_port: "9000",
      dir: tg_bot_db_dir.path,
    );

    var shell = await tgServer.run(
      executable: "telegram-bot-api",
      arguments: telegram_bot_api_arguments,
      host: "0.0.0.0",
      tg_bot_api_port: 9000,
      runInShell: false,
      is_print: true,
    );
    var owner_user_id = 1;
    while (true) {
      await Future.delayed(Duration(milliseconds: 100));

      try {
        Map getMe = await tg.telegramBotApi.request("getMe");
        Map init_ = await tg.telegramBotApi.initIsolate(
          tokenBot: tg.telegramBotApi.token_bot,
          owner_user_id: owner_user_id,
          from_bot_user_id: owner_user_id,
          expire_date: 0,
          // cryptoTg: cryptoTg,
          type_bot: "glx",
        );
        init_.printPretty();
        break;
      } catch (e) {
        if (e is SocketException) {
          continue;
        }
        if (e is Map) {
          if (RegExp(r"Unauthorized", caseSensitive: false)
              .hasMatch(e["description"])) {
            rethrow;
          }
          rethrow;
        } else {
          rethrow;
        }
      }
    }
  }
}
