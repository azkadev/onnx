// ignore_for_file: non_constant_identifier_names, unused_local_variable, empty_catches, unnecessary_brace_in_string_interps

import "package:telegram_bot/scheme/scheme.dart" as tg_scheme;

extension ChatDataTypeSchemeExtensionUpdate on tg_scheme.ChatData {
  Future<void> utils_update_data_group_telegram_bot({
    required Map msg_chat,
    required tg_scheme.TgClientData tgClientData,
  }) async {}

  Future<void> utils_update_data_telegram_bot({
    required tg_scheme.TgClientData tgClientData,
  }) async {}
}
