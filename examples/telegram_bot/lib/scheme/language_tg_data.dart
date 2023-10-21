// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class LanguageTgData extends JsonScheme {
  LanguageTgData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "languageTgData",
      "af": "",
      "ax": "",
      "al": "",
      "dz": "",
      "as": "",
      "ad": "",
      "ao": "",
      "ai": "",
      "aq": "",
      "ag": "",
      "ar": "",
      "am": "",
      "aw": "",
      "au": "",
      "at": "",
      "az": "",
      "bs": "",
      "bh": "",
      "bd": "",
      "bb": "",
      "by": "",
      "be": "",
      "bz": "",
      "bj": "",
      "bm": "",
      "bt": "",
      "bo": "",
      "ba": "",
      "bw": "",
      "bv": "",
      "br": "",
      "io": "",
      "bn": "",
      "bg": "",
      "bf": "",
      "bi": "",
      "kh": "",
      "cm": "",
      "ca": "",
      "cv": "",
      "ky": "",
      "cf": "",
      "td": "",
      "cl": "",
      "cn": "",
      "cx": "",
      "cc": "",
      "co": "",
      "km": "",
      "cg": "",
      "cd": "",
      "ck": "",
      "cr": "",
      "ci": "",
      "hr": "",
      "cu": "",
      "cy": "",
      "cz": "",
      "dk": "",
      "dj": "",
      "dm": "",
      "do": "",
      "ec": "",
      "eg": "",
      "sv": "",
      "gq": "",
      "en": "",
      "er": "",
      "ee": "",
      "et": "",
      "fk": "",
      "fo": "",
      "fj": "",
      "fi": "",
      "fr": "",
      "gf": "",
      "pf": "",
      "tf": "",
      "ga": "",
      "gm": "",
      "ge": "",
      "de": "",
      "gh": "",
      "gi": "",
      "gr": "",
      "gl": "",
      "gd": "",
      "gp": "",
      "gu": "",
      "gt": "",
      "gg": "",
      "gn": "",
      "gw": "",
      "gy": "",
      "ht": "",
      "hm": "",
      "va": "",
      "hn": "",
      "hk": "",
      "hu": "",
      "is": "",
      "in": "",
      "id": "",
      "ir": "",
      "iq": "",
      "ie": "",
      "im": "",
      "il": "",
      "it": "",
      "jm": "",
      "jp": "",
      "je": "",
      "jo": "",
      "kz": "",
      "ke": "",
      "ki": "",
      "kp": "",
      "ko": "",
      "xk": "",
      "kw": "",
      "kg": "",
      "la": "",
      "lv": "",
      "lb": "",
      "ls": "",
      "lr": "",
      "ly": "",
      "li": "",
      "lt": "",
      "lu": "",
      "mo": "",
      "mk": "",
      "mg": "",
      "mw": "",
      "my": "",
      "mv": "",
      "ml": "",
      "mt": "",
      "mh": "",
      "mq": "",
      "mr": "",
      "mu": "",
      "yt": "",
      "mx": "",
      "fm": "",
      "md": "",
      "mc": "",
      "mn": "",
      "me": "",
      "ms": "",
      "ma": "",
      "mz": "",
      "mm": "",
      "na": "",
      "nr": "",
      "np": "",
      "nl": "",
      "an": "",
      "nc": "",
      "nz": "",
      "ni": "",
      "ne": "",
      "ng": "",
      "nu": "",
      "nf": "",
      "mp": "",
      "no": "",
      "om": "",
      "pk": "",
      "pw": "",
      "ps": "",
      "pa": "",
      "pg": "",
      "py": "",
      "pe": "",
      "ph": "",
      "pn": "",
      "pl": "",
      "pt": "",
      "pr": "",
      "qa": "",
      "ro": "",
      "ru": "",
      "rw": "",
      "re": "",
      "bl": "",
      "sh": "",
      "kn": "",
      "lc": "",
      "mf": "",
      "pm": "",
      "vc": "",
      "ws": "",
      "sm": "",
      "st": "",
      "sa": "",
      "sn": "",
      "rs": "",
      "sc": "",
      "sl": "",
      "sg": "",
      "sk": "",
      "si": "",
      "sb": "",
      "so": "",
      "za": "",
      "ss": "",
      "gs": "",
      "es": "",
      "lk": "",
      "sd": "",
      "sr": "",
      "sj": "",
      "sz": "",
      "se": "",
      "ch": "",
      "sy": "",
      "tw": "",
      "tj": "",
      "tz": "",
      "th": "",
      "tl": "",
      "tg": "",
      "tk": "",
      "to": "",
      "tt": "",
      "tn": "",
      "tr": "",
      "tm": "",
      "tc": "",
      "tv": "",
      "ug": "",
      "ua": "",
      "ae": "",
      "gb": "",
      "us": "",
      "uy": "",
      "uz": "",
      "vu": "",
      "ve": "",
      "vn": "",
      "vg": "",
      "vi": "",
      "wf": "",
      "ye": "",
      "zm": "",
      "zw": "",
      "auto": "",
      "sq": "",
      "hy": "",
      "eu": "",
      "ceb": "",
      "zh": "",
      "zh-CN": "",
      "zh-TW": "",
      "cs": "",
      "da": "",
      "eo": "",
      "fy": "",
      "ka": "",
      "el": "",
      "ha": "",
      "haw": "",
      "he": "",
      "iw": "",
      "hi": "",
      "hmn": "",
      "ig": "",
      "ja": "",
      "jw": "",
      "kk": "",
      "ku": "",
      "lo": "",
      "mi": "",
      "ny": "",
      "or": "",
      "fa": "",
      "su": "",
      "sw": "",
      "ta": "",
      "te": "",
      "uk": "",
      "ur": "",
      "xh": "",
      "yi": "",
      "yo": "",
      "zu": ""
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

  String? get af {
    try {
      if (rawData["af"] is String == false) {
        return null;
      }
      return rawData["af"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ax {
    try {
      if (rawData["ax"] is String == false) {
        return null;
      }
      return rawData["ax"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get al {
    try {
      if (rawData["al"] is String == false) {
        return null;
      }
      return rawData["al"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get dz {
    try {
      if (rawData["dz"] is String == false) {
        return null;
      }
      return rawData["dz"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get as {
    try {
      if (rawData["as"] is String == false) {
        return null;
      }
      return rawData["as"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ad {
    try {
      if (rawData["ad"] is String == false) {
        return null;
      }
      return rawData["ad"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ao {
    try {
      if (rawData["ao"] is String == false) {
        return null;
      }
      return rawData["ao"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ai {
    try {
      if (rawData["ai"] is String == false) {
        return null;
      }
      return rawData["ai"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get aq {
    try {
      if (rawData["aq"] is String == false) {
        return null;
      }
      return rawData["aq"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ag {
    try {
      if (rawData["ag"] is String == false) {
        return null;
      }
      return rawData["ag"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ar {
    try {
      if (rawData["ar"] is String == false) {
        return null;
      }
      return rawData["ar"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get am {
    try {
      if (rawData["am"] is String == false) {
        return null;
      }
      return rawData["am"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get aw {
    try {
      if (rawData["aw"] is String == false) {
        return null;
      }
      return rawData["aw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get au {
    try {
      if (rawData["au"] is String == false) {
        return null;
      }
      return rawData["au"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get at {
    try {
      if (rawData["at"] is String == false) {
        return null;
      }
      return rawData["at"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get az {
    try {
      if (rawData["az"] is String == false) {
        return null;
      }
      return rawData["az"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bs {
    try {
      if (rawData["bs"] is String == false) {
        return null;
      }
      return rawData["bs"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bh {
    try {
      if (rawData["bh"] is String == false) {
        return null;
      }
      return rawData["bh"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bd {
    try {
      if (rawData["bd"] is String == false) {
        return null;
      }
      return rawData["bd"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bb {
    try {
      if (rawData["bb"] is String == false) {
        return null;
      }
      return rawData["bb"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get by {
    try {
      if (rawData["by"] is String == false) {
        return null;
      }
      return rawData["by"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get be {
    try {
      if (rawData["be"] is String == false) {
        return null;
      }
      return rawData["be"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bz {
    try {
      if (rawData["bz"] is String == false) {
        return null;
      }
      return rawData["bz"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bj {
    try {
      if (rawData["bj"] is String == false) {
        return null;
      }
      return rawData["bj"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bm {
    try {
      if (rawData["bm"] is String == false) {
        return null;
      }
      return rawData["bm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bt {
    try {
      if (rawData["bt"] is String == false) {
        return null;
      }
      return rawData["bt"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bo {
    try {
      if (rawData["bo"] is String == false) {
        return null;
      }
      return rawData["bo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ba {
    try {
      if (rawData["ba"] is String == false) {
        return null;
      }
      return rawData["ba"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bw {
    try {
      if (rawData["bw"] is String == false) {
        return null;
      }
      return rawData["bw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bv {
    try {
      if (rawData["bv"] is String == false) {
        return null;
      }
      return rawData["bv"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get br {
    try {
      if (rawData["br"] is String == false) {
        return null;
      }
      return rawData["br"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get io {
    try {
      if (rawData["io"] is String == false) {
        return null;
      }
      return rawData["io"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bn {
    try {
      if (rawData["bn"] is String == false) {
        return null;
      }
      return rawData["bn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bg {
    try {
      if (rawData["bg"] is String == false) {
        return null;
      }
      return rawData["bg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bf {
    try {
      if (rawData["bf"] is String == false) {
        return null;
      }
      return rawData["bf"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bi {
    try {
      if (rawData["bi"] is String == false) {
        return null;
      }
      return rawData["bi"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get kh {
    try {
      if (rawData["kh"] is String == false) {
        return null;
      }
      return rawData["kh"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cm {
    try {
      if (rawData["cm"] is String == false) {
        return null;
      }
      return rawData["cm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ca {
    try {
      if (rawData["ca"] is String == false) {
        return null;
      }
      return rawData["ca"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cv {
    try {
      if (rawData["cv"] is String == false) {
        return null;
      }
      return rawData["cv"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ky {
    try {
      if (rawData["ky"] is String == false) {
        return null;
      }
      return rawData["ky"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cf {
    try {
      if (rawData["cf"] is String == false) {
        return null;
      }
      return rawData["cf"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get td {
    try {
      if (rawData["td"] is String == false) {
        return null;
      }
      return rawData["td"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cl {
    try {
      if (rawData["cl"] is String == false) {
        return null;
      }
      return rawData["cl"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cn {
    try {
      if (rawData["cn"] is String == false) {
        return null;
      }
      return rawData["cn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cx {
    try {
      if (rawData["cx"] is String == false) {
        return null;
      }
      return rawData["cx"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cc {
    try {
      if (rawData["cc"] is String == false) {
        return null;
      }
      return rawData["cc"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get co {
    try {
      if (rawData["co"] is String == false) {
        return null;
      }
      return rawData["co"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get km {
    try {
      if (rawData["km"] is String == false) {
        return null;
      }
      return rawData["km"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cg {
    try {
      if (rawData["cg"] is String == false) {
        return null;
      }
      return rawData["cg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cd {
    try {
      if (rawData["cd"] is String == false) {
        return null;
      }
      return rawData["cd"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ck {
    try {
      if (rawData["ck"] is String == false) {
        return null;
      }
      return rawData["ck"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cr {
    try {
      if (rawData["cr"] is String == false) {
        return null;
      }
      return rawData["cr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ci {
    try {
      if (rawData["ci"] is String == false) {
        return null;
      }
      return rawData["ci"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get hr {
    try {
      if (rawData["hr"] is String == false) {
        return null;
      }
      return rawData["hr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cu {
    try {
      if (rawData["cu"] is String == false) {
        return null;
      }
      return rawData["cu"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cy {
    try {
      if (rawData["cy"] is String == false) {
        return null;
      }
      return rawData["cy"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cz {
    try {
      if (rawData["cz"] is String == false) {
        return null;
      }
      return rawData["cz"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get dk {
    try {
      if (rawData["dk"] is String == false) {
        return null;
      }
      return rawData["dk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get dj {
    try {
      if (rawData["dj"] is String == false) {
        return null;
      }
      return rawData["dj"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get dm {
    try {
      if (rawData["dm"] is String == false) {
        return null;
      }
      return rawData["dm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get do_ {
    try {
      if (rawData["do"] is String == false) {
        return null;
      }
      return rawData["do"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ec {
    try {
      if (rawData["ec"] is String == false) {
        return null;
      }
      return rawData["ec"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get eg {
    try {
      if (rawData["eg"] is String == false) {
        return null;
      }
      return rawData["eg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sv {
    try {
      if (rawData["sv"] is String == false) {
        return null;
      }
      return rawData["sv"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gq {
    try {
      if (rawData["gq"] is String == false) {
        return null;
      }
      return rawData["gq"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get en {
    try {
      if (rawData["en"] is String == false) {
        return null;
      }
      return rawData["en"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get er {
    try {
      if (rawData["er"] is String == false) {
        return null;
      }
      return rawData["er"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ee {
    try {
      if (rawData["ee"] is String == false) {
        return null;
      }
      return rawData["ee"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get et {
    try {
      if (rawData["et"] is String == false) {
        return null;
      }
      return rawData["et"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get fk {
    try {
      if (rawData["fk"] is String == false) {
        return null;
      }
      return rawData["fk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get fo {
    try {
      if (rawData["fo"] is String == false) {
        return null;
      }
      return rawData["fo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get fj {
    try {
      if (rawData["fj"] is String == false) {
        return null;
      }
      return rawData["fj"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get fi {
    try {
      if (rawData["fi"] is String == false) {
        return null;
      }
      return rawData["fi"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get fr {
    try {
      if (rawData["fr"] is String == false) {
        return null;
      }
      return rawData["fr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gf {
    try {
      if (rawData["gf"] is String == false) {
        return null;
      }
      return rawData["gf"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pf {
    try {
      if (rawData["pf"] is String == false) {
        return null;
      }
      return rawData["pf"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tf {
    try {
      if (rawData["tf"] is String == false) {
        return null;
      }
      return rawData["tf"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ga {
    try {
      if (rawData["ga"] is String == false) {
        return null;
      }
      return rawData["ga"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gm {
    try {
      if (rawData["gm"] is String == false) {
        return null;
      }
      return rawData["gm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ge {
    try {
      if (rawData["ge"] is String == false) {
        return null;
      }
      return rawData["ge"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get de {
    try {
      if (rawData["de"] is String == false) {
        return null;
      }
      return rawData["de"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gh {
    try {
      if (rawData["gh"] is String == false) {
        return null;
      }
      return rawData["gh"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gi {
    try {
      if (rawData["gi"] is String == false) {
        return null;
      }
      return rawData["gi"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gr {
    try {
      if (rawData["gr"] is String == false) {
        return null;
      }
      return rawData["gr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gl {
    try {
      if (rawData["gl"] is String == false) {
        return null;
      }
      return rawData["gl"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gd {
    try {
      if (rawData["gd"] is String == false) {
        return null;
      }
      return rawData["gd"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gp {
    try {
      if (rawData["gp"] is String == false) {
        return null;
      }
      return rawData["gp"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gu {
    try {
      if (rawData["gu"] is String == false) {
        return null;
      }
      return rawData["gu"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gt {
    try {
      if (rawData["gt"] is String == false) {
        return null;
      }
      return rawData["gt"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gg {
    try {
      if (rawData["gg"] is String == false) {
        return null;
      }
      return rawData["gg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gn {
    try {
      if (rawData["gn"] is String == false) {
        return null;
      }
      return rawData["gn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gw {
    try {
      if (rawData["gw"] is String == false) {
        return null;
      }
      return rawData["gw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gy {
    try {
      if (rawData["gy"] is String == false) {
        return null;
      }
      return rawData["gy"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ht {
    try {
      if (rawData["ht"] is String == false) {
        return null;
      }
      return rawData["ht"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get hm {
    try {
      if (rawData["hm"] is String == false) {
        return null;
      }
      return rawData["hm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get va {
    try {
      if (rawData["va"] is String == false) {
        return null;
      }
      return rawData["va"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get hn {
    try {
      if (rawData["hn"] is String == false) {
        return null;
      }
      return rawData["hn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get hk {
    try {
      if (rawData["hk"] is String == false) {
        return null;
      }
      return rawData["hk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get hu {
    try {
      if (rawData["hu"] is String == false) {
        return null;
      }
      return rawData["hu"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get is_ {
    try {
      if (rawData["is"] is String == false) {
        return null;
      }
      return rawData["is"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get in_ {
    try {
      if (rawData["in"] is String == false) {
        return null;
      }
      return rawData["in"] as String;
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

  String? get ir {
    try {
      if (rawData["ir"] is String == false) {
        return null;
      }
      return rawData["ir"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get iq {
    try {
      if (rawData["iq"] is String == false) {
        return null;
      }
      return rawData["iq"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ie {
    try {
      if (rawData["ie"] is String == false) {
        return null;
      }
      return rawData["ie"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get im {
    try {
      if (rawData["im"] is String == false) {
        return null;
      }
      return rawData["im"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get il {
    try {
      if (rawData["il"] is String == false) {
        return null;
      }
      return rawData["il"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get it {
    try {
      if (rawData["it"] is String == false) {
        return null;
      }
      return rawData["it"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get jm {
    try {
      if (rawData["jm"] is String == false) {
        return null;
      }
      return rawData["jm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get jp {
    try {
      if (rawData["jp"] is String == false) {
        return null;
      }
      return rawData["jp"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get je {
    try {
      if (rawData["je"] is String == false) {
        return null;
      }
      return rawData["je"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get jo {
    try {
      if (rawData["jo"] is String == false) {
        return null;
      }
      return rawData["jo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get kz {
    try {
      if (rawData["kz"] is String == false) {
        return null;
      }
      return rawData["kz"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ke {
    try {
      if (rawData["ke"] is String == false) {
        return null;
      }
      return rawData["ke"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ki {
    try {
      if (rawData["ki"] is String == false) {
        return null;
      }
      return rawData["ki"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get kp {
    try {
      if (rawData["kp"] is String == false) {
        return null;
      }
      return rawData["kp"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ko {
    try {
      if (rawData["ko"] is String == false) {
        return null;
      }
      return rawData["ko"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get xk {
    try {
      if (rawData["xk"] is String == false) {
        return null;
      }
      return rawData["xk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get kw {
    try {
      if (rawData["kw"] is String == false) {
        return null;
      }
      return rawData["kw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get kg {
    try {
      if (rawData["kg"] is String == false) {
        return null;
      }
      return rawData["kg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get la {
    try {
      if (rawData["la"] is String == false) {
        return null;
      }
      return rawData["la"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get lv {
    try {
      if (rawData["lv"] is String == false) {
        return null;
      }
      return rawData["lv"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get lb {
    try {
      if (rawData["lb"] is String == false) {
        return null;
      }
      return rawData["lb"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ls {
    try {
      if (rawData["ls"] is String == false) {
        return null;
      }
      return rawData["ls"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get lr {
    try {
      if (rawData["lr"] is String == false) {
        return null;
      }
      return rawData["lr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ly {
    try {
      if (rawData["ly"] is String == false) {
        return null;
      }
      return rawData["ly"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get li {
    try {
      if (rawData["li"] is String == false) {
        return null;
      }
      return rawData["li"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get lt {
    try {
      if (rawData["lt"] is String == false) {
        return null;
      }
      return rawData["lt"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get lu {
    try {
      if (rawData["lu"] is String == false) {
        return null;
      }
      return rawData["lu"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mo {
    try {
      if (rawData["mo"] is String == false) {
        return null;
      }
      return rawData["mo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mk {
    try {
      if (rawData["mk"] is String == false) {
        return null;
      }
      return rawData["mk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mg {
    try {
      if (rawData["mg"] is String == false) {
        return null;
      }
      return rawData["mg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mw {
    try {
      if (rawData["mw"] is String == false) {
        return null;
      }
      return rawData["mw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get my {
    try {
      if (rawData["my"] is String == false) {
        return null;
      }
      return rawData["my"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mv {
    try {
      if (rawData["mv"] is String == false) {
        return null;
      }
      return rawData["mv"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ml {
    try {
      if (rawData["ml"] is String == false) {
        return null;
      }
      return rawData["ml"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mt {
    try {
      if (rawData["mt"] is String == false) {
        return null;
      }
      return rawData["mt"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mh {
    try {
      if (rawData["mh"] is String == false) {
        return null;
      }
      return rawData["mh"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mq {
    try {
      if (rawData["mq"] is String == false) {
        return null;
      }
      return rawData["mq"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mr {
    try {
      if (rawData["mr"] is String == false) {
        return null;
      }
      return rawData["mr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mu {
    try {
      if (rawData["mu"] is String == false) {
        return null;
      }
      return rawData["mu"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get yt {
    try {
      if (rawData["yt"] is String == false) {
        return null;
      }
      return rawData["yt"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mx {
    try {
      if (rawData["mx"] is String == false) {
        return null;
      }
      return rawData["mx"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get fm {
    try {
      if (rawData["fm"] is String == false) {
        return null;
      }
      return rawData["fm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get md {
    try {
      if (rawData["md"] is String == false) {
        return null;
      }
      return rawData["md"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mc {
    try {
      if (rawData["mc"] is String == false) {
        return null;
      }
      return rawData["mc"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mn {
    try {
      if (rawData["mn"] is String == false) {
        return null;
      }
      return rawData["mn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get me {
    try {
      if (rawData["me"] is String == false) {
        return null;
      }
      return rawData["me"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ms {
    try {
      if (rawData["ms"] is String == false) {
        return null;
      }
      return rawData["ms"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ma {
    try {
      if (rawData["ma"] is String == false) {
        return null;
      }
      return rawData["ma"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mz {
    try {
      if (rawData["mz"] is String == false) {
        return null;
      }
      return rawData["mz"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mm {
    try {
      if (rawData["mm"] is String == false) {
        return null;
      }
      return rawData["mm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get na {
    try {
      if (rawData["na"] is String == false) {
        return null;
      }
      return rawData["na"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get nr {
    try {
      if (rawData["nr"] is String == false) {
        return null;
      }
      return rawData["nr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get np {
    try {
      if (rawData["np"] is String == false) {
        return null;
      }
      return rawData["np"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get nl {
    try {
      if (rawData["nl"] is String == false) {
        return null;
      }
      return rawData["nl"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get an {
    try {
      if (rawData["an"] is String == false) {
        return null;
      }
      return rawData["an"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get nc {
    try {
      if (rawData["nc"] is String == false) {
        return null;
      }
      return rawData["nc"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get nz {
    try {
      if (rawData["nz"] is String == false) {
        return null;
      }
      return rawData["nz"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ni {
    try {
      if (rawData["ni"] is String == false) {
        return null;
      }
      return rawData["ni"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ne {
    try {
      if (rawData["ne"] is String == false) {
        return null;
      }
      return rawData["ne"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ng {
    try {
      if (rawData["ng"] is String == false) {
        return null;
      }
      return rawData["ng"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get nu {
    try {
      if (rawData["nu"] is String == false) {
        return null;
      }
      return rawData["nu"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get nf {
    try {
      if (rawData["nf"] is String == false) {
        return null;
      }
      return rawData["nf"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mp {
    try {
      if (rawData["mp"] is String == false) {
        return null;
      }
      return rawData["mp"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get no {
    try {
      if (rawData["no"] is String == false) {
        return null;
      }
      return rawData["no"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get om {
    try {
      if (rawData["om"] is String == false) {
        return null;
      }
      return rawData["om"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pk {
    try {
      if (rawData["pk"] is String == false) {
        return null;
      }
      return rawData["pk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pw {
    try {
      if (rawData["pw"] is String == false) {
        return null;
      }
      return rawData["pw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ps {
    try {
      if (rawData["ps"] is String == false) {
        return null;
      }
      return rawData["ps"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pa {
    try {
      if (rawData["pa"] is String == false) {
        return null;
      }
      return rawData["pa"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pg {
    try {
      if (rawData["pg"] is String == false) {
        return null;
      }
      return rawData["pg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get py {
    try {
      if (rawData["py"] is String == false) {
        return null;
      }
      return rawData["py"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pe {
    try {
      if (rawData["pe"] is String == false) {
        return null;
      }
      return rawData["pe"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ph {
    try {
      if (rawData["ph"] is String == false) {
        return null;
      }
      return rawData["ph"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pn {
    try {
      if (rawData["pn"] is String == false) {
        return null;
      }
      return rawData["pn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pl {
    try {
      if (rawData["pl"] is String == false) {
        return null;
      }
      return rawData["pl"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pt {
    try {
      if (rawData["pt"] is String == false) {
        return null;
      }
      return rawData["pt"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pr {
    try {
      if (rawData["pr"] is String == false) {
        return null;
      }
      return rawData["pr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get qa {
    try {
      if (rawData["qa"] is String == false) {
        return null;
      }
      return rawData["qa"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ro {
    try {
      if (rawData["ro"] is String == false) {
        return null;
      }
      return rawData["ro"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ru {
    try {
      if (rawData["ru"] is String == false) {
        return null;
      }
      return rawData["ru"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get rw {
    try {
      if (rawData["rw"] is String == false) {
        return null;
      }
      return rawData["rw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get re {
    try {
      if (rawData["re"] is String == false) {
        return null;
      }
      return rawData["re"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get bl {
    try {
      if (rawData["bl"] is String == false) {
        return null;
      }
      return rawData["bl"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sh {
    try {
      if (rawData["sh"] is String == false) {
        return null;
      }
      return rawData["sh"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get kn {
    try {
      if (rawData["kn"] is String == false) {
        return null;
      }
      return rawData["kn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get lc {
    try {
      if (rawData["lc"] is String == false) {
        return null;
      }
      return rawData["lc"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mf {
    try {
      if (rawData["mf"] is String == false) {
        return null;
      }
      return rawData["mf"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get pm {
    try {
      if (rawData["pm"] is String == false) {
        return null;
      }
      return rawData["pm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get vc {
    try {
      if (rawData["vc"] is String == false) {
        return null;
      }
      return rawData["vc"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ws {
    try {
      if (rawData["ws"] is String == false) {
        return null;
      }
      return rawData["ws"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sm {
    try {
      if (rawData["sm"] is String == false) {
        return null;
      }
      return rawData["sm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get st {
    try {
      if (rawData["st"] is String == false) {
        return null;
      }
      return rawData["st"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sa {
    try {
      if (rawData["sa"] is String == false) {
        return null;
      }
      return rawData["sa"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sn {
    try {
      if (rawData["sn"] is String == false) {
        return null;
      }
      return rawData["sn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get rs {
    try {
      if (rawData["rs"] is String == false) {
        return null;
      }
      return rawData["rs"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sc {
    try {
      if (rawData["sc"] is String == false) {
        return null;
      }
      return rawData["sc"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sl {
    try {
      if (rawData["sl"] is String == false) {
        return null;
      }
      return rawData["sl"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sg {
    try {
      if (rawData["sg"] is String == false) {
        return null;
      }
      return rawData["sg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sk {
    try {
      if (rawData["sk"] is String == false) {
        return null;
      }
      return rawData["sk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get si {
    try {
      if (rawData["si"] is String == false) {
        return null;
      }
      return rawData["si"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sb {
    try {
      if (rawData["sb"] is String == false) {
        return null;
      }
      return rawData["sb"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get so {
    try {
      if (rawData["so"] is String == false) {
        return null;
      }
      return rawData["so"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get za {
    try {
      if (rawData["za"] is String == false) {
        return null;
      }
      return rawData["za"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ss {
    try {
      if (rawData["ss"] is String == false) {
        return null;
      }
      return rawData["ss"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gs {
    try {
      if (rawData["gs"] is String == false) {
        return null;
      }
      return rawData["gs"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get es {
    try {
      if (rawData["es"] is String == false) {
        return null;
      }
      return rawData["es"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get lk {
    try {
      if (rawData["lk"] is String == false) {
        return null;
      }
      return rawData["lk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sd {
    try {
      if (rawData["sd"] is String == false) {
        return null;
      }
      return rawData["sd"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sr {
    try {
      if (rawData["sr"] is String == false) {
        return null;
      }
      return rawData["sr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sj {
    try {
      if (rawData["sj"] is String == false) {
        return null;
      }
      return rawData["sj"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sz {
    try {
      if (rawData["sz"] is String == false) {
        return null;
      }
      return rawData["sz"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get se {
    try {
      if (rawData["se"] is String == false) {
        return null;
      }
      return rawData["se"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ch {
    try {
      if (rawData["ch"] is String == false) {
        return null;
      }
      return rawData["ch"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sy {
    try {
      if (rawData["sy"] is String == false) {
        return null;
      }
      return rawData["sy"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tw {
    try {
      if (rawData["tw"] is String == false) {
        return null;
      }
      return rawData["tw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tj {
    try {
      if (rawData["tj"] is String == false) {
        return null;
      }
      return rawData["tj"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tz {
    try {
      if (rawData["tz"] is String == false) {
        return null;
      }
      return rawData["tz"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get th {
    try {
      if (rawData["th"] is String == false) {
        return null;
      }
      return rawData["th"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tl {
    try {
      if (rawData["tl"] is String == false) {
        return null;
      }
      return rawData["tl"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tg {
    try {
      if (rawData["tg"] is String == false) {
        return null;
      }
      return rawData["tg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tk {
    try {
      if (rawData["tk"] is String == false) {
        return null;
      }
      return rawData["tk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get to {
    try {
      if (rawData["to"] is String == false) {
        return null;
      }
      return rawData["to"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tt {
    try {
      if (rawData["tt"] is String == false) {
        return null;
      }
      return rawData["tt"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tn {
    try {
      if (rawData["tn"] is String == false) {
        return null;
      }
      return rawData["tn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tr {
    try {
      if (rawData["tr"] is String == false) {
        return null;
      }
      return rawData["tr"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tm {
    try {
      if (rawData["tm"] is String == false) {
        return null;
      }
      return rawData["tm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tc {
    try {
      if (rawData["tc"] is String == false) {
        return null;
      }
      return rawData["tc"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get tv {
    try {
      if (rawData["tv"] is String == false) {
        return null;
      }
      return rawData["tv"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ug {
    try {
      if (rawData["ug"] is String == false) {
        return null;
      }
      return rawData["ug"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ua {
    try {
      if (rawData["ua"] is String == false) {
        return null;
      }
      return rawData["ua"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ae {
    try {
      if (rawData["ae"] is String == false) {
        return null;
      }
      return rawData["ae"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get gb {
    try {
      if (rawData["gb"] is String == false) {
        return null;
      }
      return rawData["gb"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get us {
    try {
      if (rawData["us"] is String == false) {
        return null;
      }
      return rawData["us"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get uy {
    try {
      if (rawData["uy"] is String == false) {
        return null;
      }
      return rawData["uy"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get uz {
    try {
      if (rawData["uz"] is String == false) {
        return null;
      }
      return rawData["uz"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get vu {
    try {
      if (rawData["vu"] is String == false) {
        return null;
      }
      return rawData["vu"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ve {
    try {
      if (rawData["ve"] is String == false) {
        return null;
      }
      return rawData["ve"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get vn {
    try {
      if (rawData["vn"] is String == false) {
        return null;
      }
      return rawData["vn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get vg {
    try {
      if (rawData["vg"] is String == false) {
        return null;
      }
      return rawData["vg"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get vi {
    try {
      if (rawData["vi"] is String == false) {
        return null;
      }
      return rawData["vi"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get wf {
    try {
      if (rawData["wf"] is String == false) {
        return null;
      }
      return rawData["wf"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ye {
    try {
      if (rawData["ye"] is String == false) {
        return null;
      }
      return rawData["ye"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get zm {
    try {
      if (rawData["zm"] is String == false) {
        return null;
      }
      return rawData["zm"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get zw {
    try {
      if (rawData["zw"] is String == false) {
        return null;
      }
      return rawData["zw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get auto {
    try {
      if (rawData["auto"] is String == false) {
        return null;
      }
      return rawData["auto"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sq {
    try {
      if (rawData["sq"] is String == false) {
        return null;
      }
      return rawData["sq"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get hy {
    try {
      if (rawData["hy"] is String == false) {
        return null;
      }
      return rawData["hy"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get eu {
    try {
      if (rawData["eu"] is String == false) {
        return null;
      }
      return rawData["eu"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ceb {
    try {
      if (rawData["ceb"] is String == false) {
        return null;
      }
      return rawData["ceb"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get zh {
    try {
      if (rawData["zh"] is String == false) {
        return null;
      }
      return rawData["zh"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get zh_CN {
    try {
      if (rawData["zh-CN"] is String == false) {
        return null;
      }
      return rawData["zh-CN"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get zh_TW {
    try {
      if (rawData["zh-TW"] is String == false) {
        return null;
      }
      return rawData["zh-TW"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get cs {
    try {
      if (rawData["cs"] is String == false) {
        return null;
      }
      return rawData["cs"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get da {
    try {
      if (rawData["da"] is String == false) {
        return null;
      }
      return rawData["da"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get eo {
    try {
      if (rawData["eo"] is String == false) {
        return null;
      }
      return rawData["eo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get fy {
    try {
      if (rawData["fy"] is String == false) {
        return null;
      }
      return rawData["fy"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ka {
    try {
      if (rawData["ka"] is String == false) {
        return null;
      }
      return rawData["ka"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get el {
    try {
      if (rawData["el"] is String == false) {
        return null;
      }
      return rawData["el"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ha {
    try {
      if (rawData["ha"] is String == false) {
        return null;
      }
      return rawData["ha"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get haw {
    try {
      if (rawData["haw"] is String == false) {
        return null;
      }
      return rawData["haw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get he {
    try {
      if (rawData["he"] is String == false) {
        return null;
      }
      return rawData["he"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get iw {
    try {
      if (rawData["iw"] is String == false) {
        return null;
      }
      return rawData["iw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get hi {
    try {
      if (rawData["hi"] is String == false) {
        return null;
      }
      return rawData["hi"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get hmn {
    try {
      if (rawData["hmn"] is String == false) {
        return null;
      }
      return rawData["hmn"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ig {
    try {
      if (rawData["ig"] is String == false) {
        return null;
      }
      return rawData["ig"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ja {
    try {
      if (rawData["ja"] is String == false) {
        return null;
      }
      return rawData["ja"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get jw {
    try {
      if (rawData["jw"] is String == false) {
        return null;
      }
      return rawData["jw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get kk {
    try {
      if (rawData["kk"] is String == false) {
        return null;
      }
      return rawData["kk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ku {
    try {
      if (rawData["ku"] is String == false) {
        return null;
      }
      return rawData["ku"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get lo {
    try {
      if (rawData["lo"] is String == false) {
        return null;
      }
      return rawData["lo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get mi {
    try {
      if (rawData["mi"] is String == false) {
        return null;
      }
      return rawData["mi"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ny {
    try {
      if (rawData["ny"] is String == false) {
        return null;
      }
      return rawData["ny"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get or {
    try {
      if (rawData["or"] is String == false) {
        return null;
      }
      return rawData["or"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get fa {
    try {
      if (rawData["fa"] is String == false) {
        return null;
      }
      return rawData["fa"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get su {
    try {
      if (rawData["su"] is String == false) {
        return null;
      }
      return rawData["su"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get sw {
    try {
      if (rawData["sw"] is String == false) {
        return null;
      }
      return rawData["sw"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ta {
    try {
      if (rawData["ta"] is String == false) {
        return null;
      }
      return rawData["ta"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get te {
    try {
      if (rawData["te"] is String == false) {
        return null;
      }
      return rawData["te"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get uk {
    try {
      if (rawData["uk"] is String == false) {
        return null;
      }
      return rawData["uk"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get ur {
    try {
      if (rawData["ur"] is String == false) {
        return null;
      }
      return rawData["ur"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get xh {
    try {
      if (rawData["xh"] is String == false) {
        return null;
      }
      return rawData["xh"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get yi {
    try {
      if (rawData["yi"] is String == false) {
        return null;
      }
      return rawData["yi"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get yo {
    try {
      if (rawData["yo"] is String == false) {
        return null;
      }
      return rawData["yo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get zu {
    try {
      if (rawData["zu"] is String == false) {
        return null;
      }
      return rawData["zu"] as String;
    } catch (e) {
      return null;
    }
  }

  static LanguageTgData create({
    String special_type = "languageTgData",
    String? af,
    String? ax,
    String? al,
    String? dz,
    String? as,
    String? ad,
    String? ao,
    String? ai,
    String? aq,
    String? ag,
    String? ar,
    String? am,
    String? aw,
    String? au,
    String? at,
    String? az,
    String? bs,
    String? bh,
    String? bd,
    String? bb,
    String? by,
    String? be,
    String? bz,
    String? bj,
    String? bm,
    String? bt,
    String? bo,
    String? ba,
    String? bw,
    String? bv,
    String? br,
    String? io,
    String? bn,
    String? bg,
    String? bf,
    String? bi,
    String? kh,
    String? cm,
    String? ca,
    String? cv,
    String? ky,
    String? cf,
    String? td,
    String? cl,
    String? cn,
    String? cx,
    String? cc,
    String? co,
    String? km,
    String? cg,
    String? cd,
    String? ck,
    String? cr,
    String? ci,
    String? hr,
    String? cu,
    String? cy,
    String? cz,
    String? dk,
    String? dj,
    String? dm,
    String? do_,
    String? ec,
    String? eg,
    String? sv,
    String? gq,
    String? en,
    String? er,
    String? ee,
    String? et,
    String? fk,
    String? fo,
    String? fj,
    String? fi,
    String? fr,
    String? gf,
    String? pf,
    String? tf,
    String? ga,
    String? gm,
    String? ge,
    String? de,
    String? gh,
    String? gi,
    String? gr,
    String? gl,
    String? gd,
    String? gp,
    String? gu,
    String? gt,
    String? gg,
    String? gn,
    String? gw,
    String? gy,
    String? ht,
    String? hm,
    String? va,
    String? hn,
    String? hk,
    String? hu,
    String? is_,
    String? in_,
    String? id,
    String? ir,
    String? iq,
    String? ie,
    String? im,
    String? il,
    String? it,
    String? jm,
    String? jp,
    String? je,
    String? jo,
    String? kz,
    String? ke,
    String? ki,
    String? kp,
    String? ko,
    String? xk,
    String? kw,
    String? kg,
    String? la,
    String? lv,
    String? lb,
    String? ls,
    String? lr,
    String? ly,
    String? li,
    String? lt,
    String? lu,
    String? mo,
    String? mk,
    String? mg,
    String? mw,
    String? my,
    String? mv,
    String? ml,
    String? mt,
    String? mh,
    String? mq,
    String? mr,
    String? mu,
    String? yt,
    String? mx,
    String? fm,
    String? md,
    String? mc,
    String? mn,
    String? me,
    String? ms,
    String? ma,
    String? mz,
    String? mm,
    String? na,
    String? nr,
    String? np,
    String? nl,
    String? an,
    String? nc,
    String? nz,
    String? ni,
    String? ne,
    String? ng,
    String? nu,
    String? nf,
    String? mp,
    String? no,
    String? om,
    String? pk,
    String? pw,
    String? ps,
    String? pa,
    String? pg,
    String? py,
    String? pe,
    String? ph,
    String? pn,
    String? pl,
    String? pt,
    String? pr,
    String? qa,
    String? ro,
    String? ru,
    String? rw,
    String? re,
    String? bl,
    String? sh,
    String? kn,
    String? lc,
    String? mf,
    String? pm,
    String? vc,
    String? ws,
    String? sm,
    String? st,
    String? sa,
    String? sn,
    String? rs,
    String? sc,
    String? sl,
    String? sg,
    String? sk,
    String? si,
    String? sb,
    String? so,
    String? za,
    String? ss,
    String? gs,
    String? es,
    String? lk,
    String? sd,
    String? sr,
    String? sj,
    String? sz,
    String? se,
    String? ch,
    String? sy,
    String? tw,
    String? tj,
    String? tz,
    String? th,
    String? tl,
    String? tg,
    String? tk,
    String? to,
    String? tt,
    String? tn,
    String? tr,
    String? tm,
    String? tc,
    String? tv,
    String? ug,
    String? ua,
    String? ae,
    String? gb,
    String? us,
    String? uy,
    String? uz,
    String? vu,
    String? ve,
    String? vn,
    String? vg,
    String? vi,
    String? wf,
    String? ye,
    String? zm,
    String? zw,
    String? auto,
    String? sq,
    String? hy,
    String? eu,
    String? ceb,
    String? zh,
    String? zh_CN,
    String? zh_TW,
    String? cs,
    String? da,
    String? eo,
    String? fy,
    String? ka,
    String? el,
    String? ha,
    String? haw,
    String? he,
    String? iw,
    String? hi,
    String? hmn,
    String? ig,
    String? ja,
    String? jw,
    String? kk,
    String? ku,
    String? lo,
    String? mi,
    String? ny,
    String? or,
    String? fa,
    String? su,
    String? sw,
    String? ta,
    String? te,
    String? uk,
    String? ur,
    String? xh,
    String? yi,
    String? yo,
    String? zu,
  }) {
    // LanguageTgData languageTgData = LanguageTgData({
    Map languageTgData_data_create_json = {
      "@type": special_type,
      "af": af,
      "ax": ax,
      "al": al,
      "dz": dz,
      "as": as,
      "ad": ad,
      "ao": ao,
      "ai": ai,
      "aq": aq,
      "ag": ag,
      "ar": ar,
      "am": am,
      "aw": aw,
      "au": au,
      "at": at,
      "az": az,
      "bs": bs,
      "bh": bh,
      "bd": bd,
      "bb": bb,
      "by": by,
      "be": be,
      "bz": bz,
      "bj": bj,
      "bm": bm,
      "bt": bt,
      "bo": bo,
      "ba": ba,
      "bw": bw,
      "bv": bv,
      "br": br,
      "io": io,
      "bn": bn,
      "bg": bg,
      "bf": bf,
      "bi": bi,
      "kh": kh,
      "cm": cm,
      "ca": ca,
      "cv": cv,
      "ky": ky,
      "cf": cf,
      "td": td,
      "cl": cl,
      "cn": cn,
      "cx": cx,
      "cc": cc,
      "co": co,
      "km": km,
      "cg": cg,
      "cd": cd,
      "ck": ck,
      "cr": cr,
      "ci": ci,
      "hr": hr,
      "cu": cu,
      "cy": cy,
      "cz": cz,
      "dk": dk,
      "dj": dj,
      "dm": dm,
      "do": do_,
      "ec": ec,
      "eg": eg,
      "sv": sv,
      "gq": gq,
      "en": en,
      "er": er,
      "ee": ee,
      "et": et,
      "fk": fk,
      "fo": fo,
      "fj": fj,
      "fi": fi,
      "fr": fr,
      "gf": gf,
      "pf": pf,
      "tf": tf,
      "ga": ga,
      "gm": gm,
      "ge": ge,
      "de": de,
      "gh": gh,
      "gi": gi,
      "gr": gr,
      "gl": gl,
      "gd": gd,
      "gp": gp,
      "gu": gu,
      "gt": gt,
      "gg": gg,
      "gn": gn,
      "gw": gw,
      "gy": gy,
      "ht": ht,
      "hm": hm,
      "va": va,
      "hn": hn,
      "hk": hk,
      "hu": hu,
      "is": is_,
      "in": in_,
      "id": id,
      "ir": ir,
      "iq": iq,
      "ie": ie,
      "im": im,
      "il": il,
      "it": it,
      "jm": jm,
      "jp": jp,
      "je": je,
      "jo": jo,
      "kz": kz,
      "ke": ke,
      "ki": ki,
      "kp": kp,
      "ko": ko,
      "xk": xk,
      "kw": kw,
      "kg": kg,
      "la": la,
      "lv": lv,
      "lb": lb,
      "ls": ls,
      "lr": lr,
      "ly": ly,
      "li": li,
      "lt": lt,
      "lu": lu,
      "mo": mo,
      "mk": mk,
      "mg": mg,
      "mw": mw,
      "my": my,
      "mv": mv,
      "ml": ml,
      "mt": mt,
      "mh": mh,
      "mq": mq,
      "mr": mr,
      "mu": mu,
      "yt": yt,
      "mx": mx,
      "fm": fm,
      "md": md,
      "mc": mc,
      "mn": mn,
      "me": me,
      "ms": ms,
      "ma": ma,
      "mz": mz,
      "mm": mm,
      "na": na,
      "nr": nr,
      "np": np,
      "nl": nl,
      "an": an,
      "nc": nc,
      "nz": nz,
      "ni": ni,
      "ne": ne,
      "ng": ng,
      "nu": nu,
      "nf": nf,
      "mp": mp,
      "no": no,
      "om": om,
      "pk": pk,
      "pw": pw,
      "ps": ps,
      "pa": pa,
      "pg": pg,
      "py": py,
      "pe": pe,
      "ph": ph,
      "pn": pn,
      "pl": pl,
      "pt": pt,
      "pr": pr,
      "qa": qa,
      "ro": ro,
      "ru": ru,
      "rw": rw,
      "re": re,
      "bl": bl,
      "sh": sh,
      "kn": kn,
      "lc": lc,
      "mf": mf,
      "pm": pm,
      "vc": vc,
      "ws": ws,
      "sm": sm,
      "st": st,
      "sa": sa,
      "sn": sn,
      "rs": rs,
      "sc": sc,
      "sl": sl,
      "sg": sg,
      "sk": sk,
      "si": si,
      "sb": sb,
      "so": so,
      "za": za,
      "ss": ss,
      "gs": gs,
      "es": es,
      "lk": lk,
      "sd": sd,
      "sr": sr,
      "sj": sj,
      "sz": sz,
      "se": se,
      "ch": ch,
      "sy": sy,
      "tw": tw,
      "tj": tj,
      "tz": tz,
      "th": th,
      "tl": tl,
      "tg": tg,
      "tk": tk,
      "to": to,
      "tt": tt,
      "tn": tn,
      "tr": tr,
      "tm": tm,
      "tc": tc,
      "tv": tv,
      "ug": ug,
      "ua": ua,
      "ae": ae,
      "gb": gb,
      "us": us,
      "uy": uy,
      "uz": uz,
      "vu": vu,
      "ve": ve,
      "vn": vn,
      "vg": vg,
      "vi": vi,
      "wf": wf,
      "ye": ye,
      "zm": zm,
      "zw": zw,
      "auto": auto,
      "sq": sq,
      "hy": hy,
      "eu": eu,
      "ceb": ceb,
      "zh": zh,
      "zh-CN": zh_CN,
      "zh-TW": zh_TW,
      "cs": cs,
      "da": da,
      "eo": eo,
      "fy": fy,
      "ka": ka,
      "el": el,
      "ha": ha,
      "haw": haw,
      "he": he,
      "iw": iw,
      "hi": hi,
      "hmn": hmn,
      "ig": ig,
      "ja": ja,
      "jw": jw,
      "kk": kk,
      "ku": ku,
      "lo": lo,
      "mi": mi,
      "ny": ny,
      "or": or,
      "fa": fa,
      "su": su,
      "sw": sw,
      "ta": ta,
      "te": te,
      "uk": uk,
      "ur": ur,
      "xh": xh,
      "yi": yi,
      "yo": yo,
      "zu": zu,
    };

    languageTgData_data_create_json.removeWhere((key, value) => value == null);
    LanguageTgData languageTgData_data_create =
        LanguageTgData(languageTgData_data_create_json);

    return languageTgData_data_create;
  }
}
