// ignore_for_file: non_constant_identifier_names

import 'package:telegram_bot/scheme/tg_client_data.dart';

extension ExtensionTg on String {
  String autoVariableTelegram(
    Map msg, {
    Map? database,
    List<Map<String, String>>? replaces,
    required TgClientData tgClientData,
  }) {
    try {
      // return variableMessage(
      //   this,
      //   msg,
      //   database,
      //   replaces: replaces,
      //   tgClientData: tgClientData,
      // );
    } catch (e) {
      // return this;
    }
    return this;
  }
}
