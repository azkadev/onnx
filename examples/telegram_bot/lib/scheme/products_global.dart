// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "product_global_data.dart";

class ProductsGlobal extends JsonScheme {
  ProductsGlobal(super.rawData);

  static Map get defaultData {
    return {
      "@type": "productsGlobal",
      "products": [
        {
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
            "inline_keyboard": [
              [
                {
                  "text": "📜️ Baca Full 📜️",
                  "url": "https://azkadev.netlify.app"
                }
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
        }
      ]
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

  List<ProductGlobalData> get products {
    try {
      if (rawData["products"] is List == false) {
        return [];
      }
      return (rawData["products"] as List)
          .map((e) => ProductGlobalData(e as Map))
          .toList()
          .cast<ProductGlobalData>();
    } catch (e) {
      return [];
    }
  }

  static ProductsGlobal create({
    String special_type = "productsGlobal",
    List<ProductGlobalData>? products,
  }) {
    // ProductsGlobal productsGlobal = ProductsGlobal({
    Map productsGlobal_data_create_json = {
      "@type": special_type,
      "products": (products != null) ? products.toJson() : null,
    };

    productsGlobal_data_create_json.removeWhere((key, value) => value == null);
    ProductsGlobal productsGlobal_data_create =
        ProductsGlobal(productsGlobal_data_create_json);

    return productsGlobal_data_create;
  }
}
