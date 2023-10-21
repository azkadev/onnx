// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "supabase_db_data.dart";

class Hive extends JsonScheme {
  Hive(super.rawData);

  static Map get defaultData {
    return {
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

  String? get database_type {
    try {
      if (rawData["database_type"] is String == false) {
        return null;
      }
      return rawData["database_type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get supabase_id {
    try {
      if (rawData["supabase_id"] is String == false) {
        return null;
      }
      return rawData["supabase_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get supabase_key {
    try {
      if (rawData["supabase_key"] is String == false) {
        return null;
      }
      return rawData["supabase_key"] as String;
    } catch (e) {
      return null;
    }
  }

  SupabaseDbData get ads_gateway {
    try {
      if (rawData["ads_gateway"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["ads_gateway"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get coinlox {
    try {
      if (rawData["coinlox"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["coinlox"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get envivore {
    try {
      if (rawData["envivore"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["envivore"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get galaxeus {
    try {
      if (rawData["galaxeus"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["galaxeus"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get glx {
    try {
      if (rawData["glx"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["glx"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get hexaminate {
    try {
      if (rawData["hexaminate"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["hexaminate"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get meesagee {
    try {
      if (rawData["meesagee"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["meesagee"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get roleplayer {
    try {
      if (rawData["roleplayer"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["roleplayer"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get specta {
    try {
      if (rawData["specta"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["specta"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get secret_data {
    try {
      if (rawData["secret_data"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["secret_data"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  SupabaseDbData get clone_bot {
    try {
      if (rawData["clone_bot"] is Map == false) {
        return SupabaseDbData({});
      }
      return SupabaseDbData(rawData["clone_bot"] as Map);
    } catch (e) {
      return SupabaseDbData({});
    }
  }

  static Hive create({
    String special_type = "hive",
    String? database_type,
    String? supabase_id,
    String? supabase_key,
    SupabaseDbData? ads_gateway,
    SupabaseDbData? coinlox,
    SupabaseDbData? envivore,
    SupabaseDbData? galaxeus,
    SupabaseDbData? glx,
    SupabaseDbData? hexaminate,
    SupabaseDbData? meesagee,
    SupabaseDbData? roleplayer,
    SupabaseDbData? specta,
    SupabaseDbData? secret_data,
    SupabaseDbData? clone_bot,
  }) {
    // Hive hive = Hive({
    Map hive_data_create_json = {
      "@type": special_type,
      "database_type": database_type,
      "supabase_id": supabase_id,
      "supabase_key": supabase_key,
      "ads_gateway": (ads_gateway != null) ? ads_gateway.toJson() : null,
      "coinlox": (coinlox != null) ? coinlox.toJson() : null,
      "envivore": (envivore != null) ? envivore.toJson() : null,
      "galaxeus": (galaxeus != null) ? galaxeus.toJson() : null,
      "glx": (glx != null) ? glx.toJson() : null,
      "hexaminate": (hexaminate != null) ? hexaminate.toJson() : null,
      "meesagee": (meesagee != null) ? meesagee.toJson() : null,
      "roleplayer": (roleplayer != null) ? roleplayer.toJson() : null,
      "specta": (specta != null) ? specta.toJson() : null,
      "secret_data": (secret_data != null) ? secret_data.toJson() : null,
      "clone_bot": (clone_bot != null) ? clone_bot.toJson() : null,
    };

    hive_data_create_json.removeWhere((key, value) => value == null);
    Hive hive_data_create = Hive(hive_data_create_json);

    return hive_data_create;
  }
}
