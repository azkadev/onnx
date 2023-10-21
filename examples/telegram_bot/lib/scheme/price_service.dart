// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class PriceService extends JsonScheme {
  PriceService(super.rawData);

  static Map get defaultData {
    return {
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

  int? get developer_app_only_open_source {
    try {
      if (rawData["developer_app_only_open_source"] is int == false) {
        return null;
      }
      return rawData["developer_app_only_open_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_app_only_close_source {
    try {
      if (rawData["developer_app_only_close_source"] is int == false) {
        return null;
      }
      return rawData["developer_app_only_close_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_full_stack_open_source {
    try {
      if (rawData["developer_full_stack_open_source"] is int == false) {
        return null;
      }
      return rawData["developer_full_stack_open_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_full_stack_close_source {
    try {
      if (rawData["developer_full_stack_close_source"] is int == false) {
        return null;
      }
      return rawData["developer_full_stack_close_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_server_only_open_source {
    try {
      if (rawData["developer_server_only_open_source"] is int == false) {
        return null;
      }
      return rawData["developer_server_only_open_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_server_only_close_source {
    try {
      if (rawData["developer_server_only_close_source"] is int == false) {
        return null;
      }
      return rawData["developer_server_only_close_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_app_ui_only_open_source {
    try {
      if (rawData["developer_app_ui_only_open_source"] is int == false) {
        return null;
      }
      return rawData["developer_app_ui_only_open_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_app_ui_only_close_source {
    try {
      if (rawData["developer_app_ui_only_close_source"] is int == false) {
        return null;
      }
      return rawData["developer_app_ui_only_close_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_bot_social_media_open_source {
    try {
      if (rawData["developer_bot_social_media_open_source"] is int == false) {
        return null;
      }
      return rawData["developer_bot_social_media_open_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_bot_social_media_close_source {
    try {
      if (rawData["developer_bot_social_media_close_source"] is int == false) {
        return null;
      }
      return rawData["developer_bot_social_media_close_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_hardware_open_source {
    try {
      if (rawData["developer_hardware_open_source"] is int == false) {
        return null;
      }
      return rawData["developer_hardware_open_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get developer_hardware_close_source {
    try {
      if (rawData["developer_hardware_close_source"] is int == false) {
        return null;
      }
      return rawData["developer_hardware_close_source"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get partner_random {
    try {
      if (rawData["partner_random"] is int == false) {
        return null;
      }
      return rawData["partner_random"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get partner_target {
    try {
      if (rawData["partner_target"] is int == false) {
        return null;
      }
      return rawData["partner_target"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get partner_criteria {
    try {
      if (rawData["partner_criteria"] is int == false) {
        return null;
      }
      return rawData["partner_criteria"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get promote_broadcast {
    try {
      if (rawData["promote_broadcast"] is int == false) {
        return null;
      }
      return rawData["promote_broadcast"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get promote_sounding {
    try {
      if (rawData["promote_sounding"] is int == false) {
        return null;
      }
      return rawData["promote_sounding"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get promote_neural {
    try {
      if (rawData["promote_neural"] is int == false) {
        return null;
      }
      return rawData["promote_neural"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get terminate_social_media_fight_back {
    try {
      if (rawData["terminate_social_media_fight_back"] is int == false) {
        return null;
      }
      return rawData["terminate_social_media_fight_back"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get terminate_social_media_report {
    try {
      if (rawData["terminate_social_media_report"] is int == false) {
        return null;
      }
      return rawData["terminate_social_media_report"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get terminate_social_media_send_to_you {
    try {
      if (rawData["terminate_social_media_send_to_you"] is int == false) {
        return null;
      }
      return rawData["terminate_social_media_send_to_you"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get terminate_real_life_fight_back {
    try {
      if (rawData["terminate_real_life_fight_back"] is int == false) {
        return null;
      }
      return rawData["terminate_real_life_fight_back"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get terminate_real_life_report {
    try {
      if (rawData["terminate_real_life_report"] is int == false) {
        return null;
      }
      return rawData["terminate_real_life_report"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get terminate_real_life_send_to_you {
    try {
      if (rawData["terminate_real_life_send_to_you"] is int == false) {
        return null;
      }
      return rawData["terminate_real_life_send_to_you"] as int;
    } catch (e) {
      return null;
    }
  }

  static PriceService create({
    String special_type = "price_service",
    int? developer_app_only_open_source,
    int? developer_app_only_close_source,
    int? developer_full_stack_open_source,
    int? developer_full_stack_close_source,
    int? developer_server_only_open_source,
    int? developer_server_only_close_source,
    int? developer_app_ui_only_open_source,
    int? developer_app_ui_only_close_source,
    int? developer_bot_social_media_open_source,
    int? developer_bot_social_media_close_source,
    int? developer_hardware_open_source,
    int? developer_hardware_close_source,
    int? partner_random,
    int? partner_target,
    int? partner_criteria,
    int? promote_broadcast,
    int? promote_sounding,
    int? promote_neural,
    int? terminate_social_media_fight_back,
    int? terminate_social_media_report,
    int? terminate_social_media_send_to_you,
    int? terminate_real_life_fight_back,
    int? terminate_real_life_report,
    int? terminate_real_life_send_to_you,
  }) {
    // PriceService priceService = PriceService({
    Map priceService_data_create_json = {
      "@type": special_type,
      "developer_app_only_open_source": developer_app_only_open_source,
      "developer_app_only_close_source": developer_app_only_close_source,
      "developer_full_stack_open_source": developer_full_stack_open_source,
      "developer_full_stack_close_source": developer_full_stack_close_source,
      "developer_server_only_open_source": developer_server_only_open_source,
      "developer_server_only_close_source": developer_server_only_close_source,
      "developer_app_ui_only_open_source": developer_app_ui_only_open_source,
      "developer_app_ui_only_close_source": developer_app_ui_only_close_source,
      "developer_bot_social_media_open_source":
          developer_bot_social_media_open_source,
      "developer_bot_social_media_close_source":
          developer_bot_social_media_close_source,
      "developer_hardware_open_source": developer_hardware_open_source,
      "developer_hardware_close_source": developer_hardware_close_source,
      "partner_random": partner_random,
      "partner_target": partner_target,
      "partner_criteria": partner_criteria,
      "promote_broadcast": promote_broadcast,
      "promote_sounding": promote_sounding,
      "promote_neural": promote_neural,
      "terminate_social_media_fight_back": terminate_social_media_fight_back,
      "terminate_social_media_report": terminate_social_media_report,
      "terminate_social_media_send_to_you": terminate_social_media_send_to_you,
      "terminate_real_life_fight_back": terminate_real_life_fight_back,
      "terminate_real_life_report": terminate_real_life_report,
      "terminate_real_life_send_to_you": terminate_real_life_send_to_you,
    };

    priceService_data_create_json.removeWhere((key, value) => value == null);
    PriceService priceService_data_create =
        PriceService(priceService_data_create_json);

    return priceService_data_create;
  }
}
