// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "price_service.dart";

class Environment extends JsonScheme {
  Environment(super.rawData);

  static Map get defaultData {
    return {
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

  bool? get is_use_tdlib {
    try {
      if (rawData["is_use_tdlib"] is bool == false) {
        return null;
      }
      return rawData["is_use_tdlib"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get tg_bot_api_url {
    try {
      if (rawData["tg_bot_api_url"] is String == false) {
        return null;
      }
      return rawData["tg_bot_api_url"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get server_port {
    try {
      if (rawData["server_port"] is int == false) {
        return null;
      }
      return rawData["server_port"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get server_host {
    try {
      if (rawData["server_host"] is String == false) {
        return null;
      }
      return rawData["server_host"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get work_telegram_chat_id {
    try {
      if (rawData["work_telegram_chat_id"] is int == false) {
        return null;
      }
      return rawData["work_telegram_chat_id"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get glx_api_url {
    try {
      if (rawData["glx_api_url"] is String == false) {
        return null;
      }
      return rawData["glx_api_url"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get is_skip_get_db_user {
    try {
      if (rawData["is_skip_get_db_user"] is bool == false) {
        return null;
      }
      return rawData["is_skip_get_db_user"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_skip_chat_group {
    try {
      if (rawData["is_skip_chat_group"] is bool == false) {
        return null;
      }
      return rawData["is_skip_chat_group"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_skip_chat_channel {
    try {
      if (rawData["is_skip_chat_channel"] is bool == false) {
        return null;
      }
      return rawData["is_skip_chat_channel"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_skip_chat_private {
    try {
      if (rawData["is_skip_chat_private"] is bool == false) {
        return null;
      }
      return rawData["is_skip_chat_private"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_skip_secret_data_user {
    try {
      if (rawData["is_skip_secret_data_user"] is bool == false) {
        return null;
      }
      return rawData["is_skip_secret_data_user"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_auto_report_user {
    try {
      if (rawData["is_auto_report_user"] is bool == false) {
        return null;
      }
      return rawData["is_auto_report_user"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_report_user_only {
    try {
      if (rawData["is_report_user_only"] is bool == false) {
        return null;
      }
      return rawData["is_report_user_only"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_no_limitation {
    try {
      if (rawData["is_no_limitation"] is bool == false) {
        return null;
      }
      return rawData["is_no_limitation"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get telegram_log_token_bot {
    try {
      if (rawData["telegram_log_token_bot"] is String == false) {
        return null;
      }
      return rawData["telegram_log_token_bot"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get telegram_api_id {
    try {
      if (rawData["telegram_api_id"] is int == false) {
        return null;
      }
      return rawData["telegram_api_id"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get telegram_api_hash {
    try {
      if (rawData["telegram_api_hash"] is String == false) {
        return null;
      }
      return rawData["telegram_api_hash"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get secret_data_telegram_username {
    try {
      if (rawData["secret_data_telegram_username"] is String == false) {
        return null;
      }
      return rawData["secret_data_telegram_username"] as String;
    } catch (e) {
      return null;
    }
  }

  PriceService get price_service {
    try {
      if (rawData["price_service"] is Map == false) {
        return PriceService({});
      }
      return PriceService(rawData["price_service"] as Map);
    } catch (e) {
      return PriceService({});
    }
  }

  static Environment create({
    String special_type = "environment",
    bool? is_use_tdlib,
    String? tg_bot_api_url,
    int? server_port,
    String? server_host,
    int? work_telegram_chat_id,
    String? glx_api_url,
    bool? is_skip_get_db_user,
    bool? is_skip_chat_group,
    bool? is_skip_chat_channel,
    bool? is_skip_chat_private,
    bool? is_skip_secret_data_user,
    bool? is_auto_report_user,
    bool? is_report_user_only,
    bool? is_no_limitation,
    String? telegram_log_token_bot,
    int? telegram_api_id,
    String? telegram_api_hash,
    String? secret_data_telegram_username,
    PriceService? price_service,
  }) {
    // Environment environment = Environment({
    Map environment_data_create_json = {
      "@type": special_type,
      "is_use_tdlib": is_use_tdlib,
      "tg_bot_api_url": tg_bot_api_url,
      "server_port": server_port,
      "server_host": server_host,
      "work_telegram_chat_id": work_telegram_chat_id,
      "glx_api_url": glx_api_url,
      "is_skip_get_db_user": is_skip_get_db_user,
      "is_skip_chat_group": is_skip_chat_group,
      "is_skip_chat_channel": is_skip_chat_channel,
      "is_skip_chat_private": is_skip_chat_private,
      "is_skip_secret_data_user": is_skip_secret_data_user,
      "is_auto_report_user": is_auto_report_user,
      "is_report_user_only": is_report_user_only,
      "is_no_limitation": is_no_limitation,
      "telegram_log_token_bot": telegram_log_token_bot,
      "telegram_api_id": telegram_api_id,
      "telegram_api_hash": telegram_api_hash,
      "secret_data_telegram_username": secret_data_telegram_username,
      "price_service": (price_service != null) ? price_service.toJson() : null,
    };

    environment_data_create_json.removeWhere((key, value) => value == null);
    Environment environment_data_create =
        Environment(environment_data_create_json);

    return environment_data_create;
  }
}
