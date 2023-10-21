// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "reply_markup.dart";

class ProductGlobalData extends JsonScheme {
  ProductGlobalData(super.rawData);

  static Map get defaultData {
    return {
      "@type": "productGlobalData",
      "request_api": "sendPhoto",
      "product_name": "Telegram Userbot Bot",
      "text": "",
      "video": "",
      "photo":
          "https://otzgpgazwpiopvmvztpt.supabase.co/storage/v1/object/public/galaxeus/products/telegram_clone_userbot.jpg",
      "caption":
          "# Telegram Clone Userbot Bot \n\nTelegram clone Userbot menghasilkan userbot dengan feature:\n\n1. Repeat Message\n2. Chatbot auto reply\n3. Clear Message \n4. Culik Members \n5. Join Chats massal\n\nDll\n\nPrice: 0k - 150k / bulan\n\nSemua pembelian dan transaksi clone sudah automatis jika anda tertarik anda bisa tekan nama bot di bawah jika bingung Tekan Tutorial\n",
      "protect_content": true,
      "reply_markup": {
        "@type": "reply_markup",
        "inline_keyboard": [
          [
            {"text": "📜️ Baca Full 📜️", "url": "https://azkadev.netlify.app"}
          ],
          [
            {
              "text": "Tutorial 1",
              "url": "https://www.youtube.com/watch?v=0Sm72lu7Cdk"
            },
            {
              "text": "Tutorial 2",
              "url": "https://www.youtube.com/watch?v=n_nQYDp1KNY"
            }
          ],
          [
            {"text": "Azkadev Bot", "url": "https://t.me/AzkaDevBot"}
          ],
          [
            {"text": "Galaxeus Bot", "url": "https://t.me/GalaxeusBot"},
            {"text": "HexaMinate Bot", "url": "https://t.me/HexaMinateBot"}
          ],
          [
            {
              "text": "RolePlayer UniverseBot",
              "url": "https://t.me/RolePlayerUniverseBot"
            }
          ]
        ]
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

  String? get request_api {
    try {
      if (rawData["request_api"] is String == false) {
        return null;
      }
      return rawData["request_api"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get product_name {
    try {
      if (rawData["product_name"] is String == false) {
        return null;
      }
      return rawData["product_name"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      if (rawData["text"] is String == false) {
        return null;
      }
      return rawData["text"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get video {
    try {
      if (rawData["video"] is String == false) {
        return null;
      }
      return rawData["video"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get photo {
    try {
      if (rawData["photo"] is String == false) {
        return null;
      }
      return rawData["photo"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get caption {
    try {
      if (rawData["caption"] is String == false) {
        return null;
      }
      return rawData["caption"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get protect_content {
    try {
      if (rawData["protect_content"] is bool == false) {
        return null;
      }
      return rawData["protect_content"] as bool;
    } catch (e) {
      return null;
    }
  }

  ReplyMarkup get reply_markup {
    try {
      if (rawData["reply_markup"] is Map == false) {
        return ReplyMarkup({});
      }
      return ReplyMarkup(rawData["reply_markup"] as Map);
    } catch (e) {
      return ReplyMarkup({});
    }
  }

  static ProductGlobalData create({
    String special_type = "productGlobalData",
    String? request_api,
    String? product_name,
    String? text,
    String? video,
    String? photo,
    String? caption,
    bool? protect_content,
    ReplyMarkup? reply_markup,
  }) {
    // ProductGlobalData productGlobalData = ProductGlobalData({
    Map productGlobalData_data_create_json = {
      "@type": special_type,
      "request_api": request_api,
      "product_name": product_name,
      "text": text,
      "video": video,
      "photo": photo,
      "caption": caption,
      "protect_content": protect_content,
      "reply_markup": (reply_markup != null) ? reply_markup.toJson() : null,
    };

    productGlobalData_data_create_json
        .removeWhere((key, value) => value == null);
    ProductGlobalData productGlobalData_data_create =
        ProductGlobalData(productGlobalData_data_create_json);

    return productGlobalData_data_create;
  }
}
