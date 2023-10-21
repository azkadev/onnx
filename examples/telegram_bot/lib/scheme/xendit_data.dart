// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class XenditData extends JsonScheme {
  XenditData(super.rawData);

  static Map get defaultData {
    return {"@type": "xenditData", "xen_key_live": "", "xen_key_test": ""};
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

  String? get xen_key_live {
    try {
      if (rawData["xen_key_live"] is String == false) {
        return null;
      }
      return rawData["xen_key_live"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get xen_key_test {
    try {
      if (rawData["xen_key_test"] is String == false) {
        return null;
      }
      return rawData["xen_key_test"] as String;
    } catch (e) {
      return null;
    }
  }

  static XenditData create({
    String special_type = "xenditData",
    String? xen_key_live,
    String? xen_key_test,
  }) {
    // XenditData xenditData = XenditData({
    Map xenditData_data_create_json = {
      "@type": special_type,
      "xen_key_live": xen_key_live,
      "xen_key_test": xen_key_test,
    };

    xenditData_data_create_json.removeWhere((key, value) => value == null);
    XenditData xenditData_data_create = XenditData(xenditData_data_create_json);

    return xenditData_data_create;
  }
}
