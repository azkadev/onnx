// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "log.dart";
import "environment.dart";
import "hive.dart";
import "xendit_data.dart";
import "data_client_bot.dart";
import "data_clients.dart";
import "tdlib_option.dart";
import "config_force.dart";
import "config_init.dart";

class ConfigRuntime extends JsonScheme {
  ConfigRuntime(super.rawData);

  static Map get defaultData {
    return {
      "@type": "configRuntime",
      "title": "db_telegram",
      "id": "lifetime_01",
      "name_db_telegram_bot": "",
      "owner_chat_id": "@",
      "log_chat_id": 0,
      "log": {
        "@type": "log",
        "command_start_chat_id": 0,
        "command_start_chat_id_blacklist_user": 0,
        "is_log_msg_text_chat_id": false,
        "is_log_action_chat_id": false,
        "log_action_chat_id": 0,
        "msg_text_chat_id": 0,
        "is_bot_api": true,
        "reclone_bot_chat_id": 0,
        "token_bot": ""
      },
      "path_tdlib": "libtdjson.so",
      "creator_tg_user_ids": [0],
      "gban_tg_user_ids": [0],
      "environment": {
        "@type": "environment",
        "is_use_tdlib": false,
        "tg_bot_api_url": "http://0.0.0.0:9000",
        "server_port": 8080,
        "server_host": "0.0.0.0",
        "work_telegram_chat_id": 0,
        "glx_api_url": "http://0.0.0.0:8787",
        "is_skip_get_db_user": false,
        "is_skip_chat_group": false,
        "is_skip_chat_channel": false,
        "is_skip_chat_private": false,
        "is_skip_secret_data_user": false,
        "is_auto_report_user": false,
        "is_report_user_only": false,
        "is_no_limitation": false,
        "telegram_log_token_bot": "",
        "telegram_api_id": 0,
        "telegram_api_hash": "",
        "secret_data_telegram_username": "Secret_Data_Shield_Bot",
        "price_service": {
          "@type": "price_service",
          "developer_app_only_open_source": 1000000,
          "developer_app_only_close_source": 500000,
          "developer_full_stack_open_source": 5000000,
          "developer_full_stack_close_source": 500000,
          "developer_server_only_open_source": 1000000,
          "developer_server_only_close_source": 500000,
          "developer_app_ui_only_open_source": 50000,
          "developer_app_ui_only_close_source": 0,
          "developer_bot_social_media_open_source": 1000000,
          "developer_bot_social_media_close_source": 500000,
          "developer_hardware_open_source": 0,
          "developer_hardware_close_source": 0,
          "partner_random": 1000000,
          "partner_target": 2000000,
          "partner_criteria": 3000000,
          "promote_broadcast": 5000,
          "promote_sounding": 10000,
          "promote_neural": 50000,
          "terminate_social_media_fight_back": 500000,
          "terminate_social_media_report": 1000000,
          "terminate_social_media_send_to_you": 2000000,
          "terminate_real_life_fight_back": 5000000,
          "terminate_real_life_report": 10000000,
          "terminate_real_life_send_to_you": 20000000
        }
      },
      "database": {
        "@type": "hive",
        "database_type": "supabase",
        "supabase_id": "",
        "supabase_key": "",
        "ads_gateway": {"@type": "supabaseDbData", "key": "", "url": ""},
        "coinlox": {"@type": "supabaseDbData", "key": "", "url": ""},
        "envivore": {"@type": "supabaseDbData", "key": "", "url": ""},
        "galaxeus": {"@type": "supabaseDbData", "key": "", "url": ""},
        "glx": {"@type": "supabaseDbData", "key": "", "url": ""},
        "hexaminate": {"@type": "supabaseDbData", "key": "", "url": ""},
        "meesagee": {"@type": "supabaseDbData", "key": "", "url": ""},
        "roleplayer": {"@type": "supabaseDbData", "key": "", "url": ""},
        "specta": {"@type": "supabaseDbData", "key": "", "url": ""},
        "secret_data": {"@type": "supabaseDbData", "key": "", "url": ""},
        "clone_bot": {"@type": "supabaseDbData", "key": "", "url": ""}
      },
      "payment_gateway": {
        "@type": "xenditData",
        "xen_key_live": "",
        "xen_key_test": ""
      },
      "data_bots": [
        {
          "@type": "dataClientBot",
          "token_bot": "",
          "bot_user_id": 0,
          "username_bot": "",
          "type_bot": "lifetime"
        }
      ],
      "data_clients": [
        {
          "type": "core",
          "chat_usernames": [""],
          "is_force_subscribe_chat": true,
          "skip_chat_ids": [0]
        }
      ],
      "tdlib_option": {
        "@type": "tdlib_option",
        "use_file_database": true,
        "use_chat_info_database": true,
        "use_message_database": true,
        "use_secret_chats": true,
        "update_time_out": 0.0,
        "max_client": 0
      },
      "accounts": [],
      "config_force": {"@type": "configForce"},
      "config_init": {"@type": "configInit"}
    };
  }

  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      if (rawData["title"] is String == false) {
        return null;
      }
      return rawData["title"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      if (rawData["id"] is String == false) {
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get name_db_telegram_bot {
    try {
      if (rawData["name_db_telegram_bot"] is String == false) {
        return null;
      }
      return rawData["name_db_telegram_bot"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get owner_chat_id {
    try {
      if (rawData["owner_chat_id"] is String == false) {
        return null;
      }
      return rawData["owner_chat_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get log_chat_id {
    try {
      if (rawData["log_chat_id"] is int == false) {
        return null;
      }
      return rawData["log_chat_id"] as int;
    } catch (e) {
      return null;
    }
  }

  Log get log {
    try {
      if (rawData["log"] is Map == false) {
        return Log({});
      }
      return Log(rawData["log"] as Map);
    } catch (e) {
      return Log({});
    }
  }

  String? get path_tdlib {
    try {
      if (rawData["path_tdlib"] is String == false) {
        return null;
      }
      return rawData["path_tdlib"] as String;
    } catch (e) {
      return null;
    }
  }

  List<int> get creator_tg_user_ids {
    try {
      if (rawData["creator_tg_user_ids"] is List == false) {
        return [];
      }
      return (rawData["creator_tg_user_ids"] as List).cast<int>();
    } catch (e) {
      return [];
    }
  }

  List<int> get gban_tg_user_ids {
    try {
      if (rawData["gban_tg_user_ids"] is List == false) {
        return [];
      }
      return (rawData["gban_tg_user_ids"] as List).cast<int>();
    } catch (e) {
      return [];
    }
  }

  Environment get environment {
    try {
      if (rawData["environment"] is Map == false) {
        return Environment({});
      }
      return Environment(rawData["environment"] as Map);
    } catch (e) {
      return Environment({});
    }
  }

  Hive get database {
    try {
      if (rawData["database"] is Map == false) {
        return Hive({});
      }
      return Hive(rawData["database"] as Map);
    } catch (e) {
      return Hive({});
    }
  }

  XenditData get payment_gateway {
    try {
      if (rawData["payment_gateway"] is Map == false) {
        return XenditData({});
      }
      return XenditData(rawData["payment_gateway"] as Map);
    } catch (e) {
      return XenditData({});
    }
  }

  List<DataClientBot> get data_bots {
    try {
      if (rawData["data_bots"] is List == false) {
        return [];
      }
      return (rawData["data_bots"] as List)
          .map((e) => DataClientBot(e as Map))
          .toList()
          .cast<DataClientBot>();
    } catch (e) {
      return [];
    }
  }

  List<DataClients> get data_clients {
    try {
      if (rawData["data_clients"] is List == false) {
        return [];
      }
      return (rawData["data_clients"] as List)
          .map((e) => DataClients(e as Map))
          .toList()
          .cast<DataClients>();
    } catch (e) {
      return [];
    }
  }

  TdlibOption get tdlib_option {
    try {
      if (rawData["tdlib_option"] is Map == false) {
        return TdlibOption({});
      }
      return TdlibOption(rawData["tdlib_option"] as Map);
    } catch (e) {
      return TdlibOption({});
    }
  }

  List<Object> get accounts {
    try {
      if (rawData["accounts"] is List == false) {
        return [];
      }
      return (rawData["accounts"] as List).cast<Object>();
    } catch (e) {
      return [];
    }
  }

  ConfigForce get config_force {
    try {
      if (rawData["config_force"] is Map == false) {
        return ConfigForce({});
      }
      return ConfigForce(rawData["config_force"] as Map);
    } catch (e) {
      return ConfigForce({});
    }
  }

  ConfigInit get config_init {
    try {
      if (rawData["config_init"] is Map == false) {
        return ConfigInit({});
      }
      return ConfigInit(rawData["config_init"] as Map);
    } catch (e) {
      return ConfigInit({});
    }
  }

  static ConfigRuntime create({
    String special_type = "configRuntime",
    String? title,
    String? id,
    String? name_db_telegram_bot,
    String? owner_chat_id,
    int? log_chat_id,
    Log? log,
    String? path_tdlib,
    List<int>? creator_tg_user_ids,
    List<int>? gban_tg_user_ids,
    Environment? environment,
    Hive? database,
    XenditData? payment_gateway,
    List<DataClientBot>? data_bots,
    List<DataClients>? data_clients,
    TdlibOption? tdlib_option,
    List<Object>? accounts,
    ConfigForce? config_force,
    ConfigInit? config_init,
  }) {
    // ConfigRuntime configRuntime = ConfigRuntime({
    Map configRuntime_data_create_json = {
      "@type": special_type,
      "title": title,
      "id": id,
      "name_db_telegram_bot": name_db_telegram_bot,
      "owner_chat_id": owner_chat_id,
      "log_chat_id": log_chat_id,
      "log": (log != null) ? log.toJson() : null,
      "path_tdlib": path_tdlib,
      "creator_tg_user_ids": creator_tg_user_ids,
      "gban_tg_user_ids": gban_tg_user_ids,
      "environment": (environment != null) ? environment.toJson() : null,
      "database": (database != null) ? database.toJson() : null,
      "payment_gateway":
          (payment_gateway != null) ? payment_gateway.toJson() : null,
      "data_bots": (data_bots != null) ? data_bots.toJson() : null,
      "data_clients": (data_clients != null) ? data_clients.toJson() : null,
      "tdlib_option": (tdlib_option != null) ? tdlib_option.toJson() : null,
      "accounts": accounts,
      "config_force": (config_force != null) ? config_force.toJson() : null,
      "config_init": (config_init != null) ? config_init.toJson() : null,
    };

    configRuntime_data_create_json.removeWhere((key, value) => value == null);
    ConfigRuntime configRuntime_data_create =
        ConfigRuntime(configRuntime_data_create_json);

    return configRuntime_data_create;
  }
}
