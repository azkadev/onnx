// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

class UserChatData extends JsonScheme {
  UserChatData(super.rawData);

  static Map get defaultData {
    return {"@type": "userChatData"};
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

  static UserChatData create({
    String special_type = "userChatData",
  }) {
    // UserChatData userChatData = UserChatData({
    Map userChatData_data_create_json = {
      "@type": special_type,
    };

    userChatData_data_create_json.removeWhere((key, value) => value == null);
    UserChatData userChatData_data_create =
        UserChatData(userChatData_data_create_json);

    return userChatData_data_create;
  }
}
