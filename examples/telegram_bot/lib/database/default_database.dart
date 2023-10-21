// ignore_for_file: non_constant_identifier_names

import 'package:telegram_bot/extension/map.dart';

class DefaultDataBase {
  static Map get check_user => {
        "first_name": {
          "empty": "",
          "not_empty": "",
          "whitelist": "",
          "blacklist": "",
          "restrict": "",
        },
        "last_name": {
          "empty": "",
          "not_empty": "",
          "whitelist": "",
          "blacklist": "",
          "restrict": "",
        },
        "username": {
          "empty": "",
          "not_empty": "",
          "whitelist": "",
          "blacklist": "",
          "restrict": "",
        },
        "profile_photo": {
          "empty": "",
          "not_empty": "",
        },
        "bio": {
          "empty": "",
          "not_empty": "",
          "whitelist": "",
          "blacklist": "",
          "restrict": "",
        },
        "sender_chat": {
          "empty": "",
          "not_empty": "",
          "whitelist_chat_ids": [],
          "blacklist_chat_ids": [],
          "restrict": "",
        }
      };
  static Map<String, String> get media => {
        "all": "free",
        "photo": "free",
        "video": "free",
        "media_group_id": "free",
        "animation": "free",
        "voice": "free",
        "audio": "free",
        "sticker": "free",
        "sticker_is_animated": "free",
        "dice": "free",
        "emoji_animate": "free",
        "video_note": "free",
      };
  static Map<String, String> get media_more => {
        "all": "free",
        "document": "free",
        "game": "free",
        "contact": "free",
        "poll": "free",
        "location": "free",
        "invoice": "free",
        "bot_inline": "free",
        "forward_date": "free",
        "reply_to_message": "free",
      };
  static Map<String, String> get content_message => {
        "all": "free",
        "mention": "free",
        "hashtag": "free",
        "bot_command": "free",
        "url": "free",
        "email": "free",
        "phone_number": "free",
        "bold": "free",
        "italic": "free",
        "underline": "free",
        "strikethrough": "free",
        "spoiler": "free",
        "pre": "free",
      };
  static Map get content_message_option => {
        "min_msg": "free",
        "max_msg": "free",
        "min_msg_length": 0,
        "max_msg_length": 0,
      };
  static Map<String, String> get service_message => {
        "all": "free",
        "new_chat_members": "free",
        "left_chat_member": "free",
        "new_chat_title": "free",
        "new_chat_photo": "free",
        "delete_chat_photo": "free",
        "group_chat_created": "free",
        "supergroup_chat_created": "free",
        "channel_chat_created": "free",
        "message_auto_delete_timer_changed": "free",
        "successful_payment": "free",
        "voice_chat_scheduled": "free",
        "voice_chat_started": "free",
        "voice_chat_ended": "free",
        "voice_chat_participants_invited": "free",
      };
  static Map<String, dynamic> get blacklist_word {
    List<String> typeBlacklistWords = [
      "ban",
      "kick",
      "mute",
      "filter",
      "delete",
    ];

    Map<String, dynamic> jsondata = {};

    for (var index = 0; index < typeBlacklistWords.length; index++) {
      try {
        String loopData = typeBlacklistWords[index];
        if (loopData.isEmpty) {
          continue;
        }
        // is_blacklist_word_kick
        jsondata["is_blacklist_word_${loopData}"] = false;
        jsondata["blacklist_word_${loopData}"] = "";
      } catch (e) {}
    }
    return jsondata;
  }

  static Map<String, String> get ai => {
        "all": "off",
        "chatbot": "off",
        "anti_spam": "off",
        "task": "off",
      };

  static Map<String, int> get price_service => {
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
        "terminate_real_life_send_to_you": 20000000,
      };

  static Map<String, int> get premium => {
        "quota_premium_app": 500,
        "quota_nonpremium_app": 50,
        "price_premium_app": 5000,
      };

  static Map<String, int> get price_clone => {
        "price_clone_ai_bot_regular_cloud": 300000,
        "price_clone_ai_bot_regular_cli": 50000,
        "price_clone_ai_bot_regular_app": 5000,
        "price_clone_ai_bot_premium_cloud": 600000,
        "price_clone_ai_bot_premium_cli": 100000,
        "price_clone_ai_bot_premium_app": 10000,
        "price_clone_ai_bot_ultra_cloud": 1000000,
        "price_clone_ai_bot_ultra_cli": 50000,
        "price_clone_ai_bot_ultra_app": 5000,
        "price_clone_ai_bot_lifetime_cloud": 2500000,
        "price_clone_ai_bot_lifetime_cli": 250000,
        "price_clone_ai_bot_lifetime_app": 25000,
        "price_clone_ai_bot_daily_cloud": 10000,
        "price_clone_ai_bot_daily_cli": 10000,
        "price_clone_ai_bot_daily_app": 10000,
        "price_clone_discord_bot_regular_cloud": 300000,
        "price_clone_discord_bot_regular_cli": 50000,
        "price_clone_discord_bot_regular_app": 5000,
        "price_clone_discord_bot_premium_cloud": 600000,
        "price_clone_discord_bot_premium_cli": 100000,
        "price_clone_discord_bot_premium_app": 10000,
        "price_clone_discord_bot_ultra_cloud": 1000000,
        "price_clone_discord_bot_ultra_cli": 50000,
        "price_clone_discord_bot_ultra_app": 5000,
        "price_clone_discord_bot_lifetime_cloud": 2500000,
        "price_clone_discord_bot_lifetime_cli": 250000,
        "price_clone_discord_bot_lifetime_app": 25000,
        "price_clone_discord_bot_daily_cloud": 10000,
        "price_clone_discord_bot_daily_cli": 10000,
        "price_clone_discord_bot_daily_app": 10000,
        "price_clone_google_bot_regular_cloud": 300000,
        "price_clone_google_bot_regular_cli": 50000,
        "price_clone_google_bot_regular_app": 5000,
        "price_clone_google_bot_premium_cloud": 600000,
        "price_clone_google_bot_premium_cli": 100000,
        "price_clone_google_bot_premium_app": 10000,
        "price_clone_google_bot_ultra_cloud": 1000000,
        "price_clone_google_bot_ultra_cli": 50000,
        "price_clone_google_bot_ultra_app": 5000,
        "price_clone_google_bot_lifetime_cloud": 2500000,
        "price_clone_google_bot_lifetime_cli": 250000,
        "price_clone_google_bot_lifetime_app": 25000,
        "price_clone_google_bot_daily_cloud": 10000,
        "price_clone_google_bot_daily_cli": 10000,
        "price_clone_google_bot_daily_app": 10000,
        "price_clone_instagram_bot_regular_cloud": 300000,
        "price_clone_instagram_bot_regular_cli": 50000,
        "price_clone_instagram_bot_regular_app": 5000,
        "price_clone_instagram_bot_premium_cloud": 600000,
        "price_clone_instagram_bot_premium_cli": 100000,
        "price_clone_instagram_bot_premium_app": 10000,
        "price_clone_instagram_bot_ultra_cloud": 1000000,
        "price_clone_instagram_bot_ultra_cli": 50000,
        "price_clone_instagram_bot_ultra_app": 5000,
        "price_clone_instagram_bot_lifetime_cloud": 2500000,
        "price_clone_instagram_bot_lifetime_cli": 250000,
        "price_clone_instagram_bot_lifetime_app": 25000,
        "price_clone_instagram_bot_daily_cloud": 10000,
        "price_clone_instagram_bot_daily_cli": 10000,
        "price_clone_instagram_bot_daily_app": 10000,
        "price_clone_socmed_bot_regular_cloud": 300000,
        "price_clone_socmed_bot_regular_cli": 50000,
        "price_clone_socmed_bot_regular_app": 5000,
        "price_clone_socmed_bot_premium_cloud": 600000,
        "price_clone_socmed_bot_premium_cli": 100000,
        "price_clone_socmed_bot_premium_app": 10000,
        "price_clone_socmed_bot_ultra_cloud": 1000000,
        "price_clone_socmed_bot_ultra_cli": 50000,
        "price_clone_socmed_bot_ultra_app": 5000,
        "price_clone_socmed_bot_lifetime_cloud": 2500000,
        "price_clone_socmed_bot_lifetime_cli": 250000,
        "price_clone_socmed_bot_lifetime_app": 25000,
        "price_clone_socmed_bot_daily_cloud": 10000,
        "price_clone_socmed_bot_daily_cli": 10000,
        "price_clone_socmed_bot_daily_app": 10000,
        "price_clone_system_bot_regular_cloud": 1500000,
        "price_clone_system_bot_regular_cli": 250000,
        "price_clone_system_bot_regular_app": 25000,
        "price_clone_system_bot_premium_cloud": 3000000,
        "price_clone_system_bot_premium_cli": 500000,
        "price_clone_system_bot_premium_app": 50000,
        "price_clone_system_bot_ultra_cloud": 5000000,
        "price_clone_system_bot_ultra_cli": 250000,
        "price_clone_system_bot_ultra_app": 25000,
        "price_clone_system_bot_lifetime_cloud": 12500000,
        "price_clone_system_bot_lifetime_cli": 1250000,
        "price_clone_system_bot_lifetime_app": 125000,
        "price_clone_system_bot_daily_cloud": 50000,
        "price_clone_system_bot_daily_cli": 50000,
        "price_clone_system_bot_daily_app": 50000,
        "price_clone_tg_bot_regular_cloud": 300000,
        "price_clone_tg_bot_regular_cli": 50000,
        "price_clone_tg_bot_regular_app": 5000,
        "price_clone_tg_bot_premium_cloud": 600000,
        "price_clone_tg_bot_premium_cli": 100000,
        "price_clone_tg_bot_premium_app": 10000,
        "price_clone_tg_bot_ultra_cloud": 1000000,
        "price_clone_tg_bot_ultra_cli": 50000,
        "price_clone_tg_bot_ultra_app": 5000,
        "price_clone_tg_bot_lifetime_cloud": 2500000,
        "price_clone_tg_bot_lifetime_cli": 250000,
        "price_clone_tg_bot_lifetime_app": 25000,
        "price_clone_tg_bot_daily_cloud": 10000,
        "price_clone_tg_bot_daily_cli": 10000,
        "price_clone_tg_bot_daily_app": 10000,
        "price_clone_tg_userbot_regular_cloud": 300000,
        "price_clone_tg_userbot_regular_cli": 50000,
        "price_clone_tg_userbot_regular_app": 5000,
        "price_clone_tg_userbot_premium_cloud": 600000,
        "price_clone_tg_userbot_premium_cli": 100000,
        "price_clone_tg_userbot_premium_app": 10000,
        "price_clone_tg_userbot_ultra_cloud": 1000000,
        "price_clone_tg_userbot_ultra_cli": 50000,
        "price_clone_tg_userbot_ultra_app": 5000,
        "price_clone_tg_userbot_lifetime_cloud": 2500000,
        "price_clone_tg_userbot_lifetime_cli": 250000,
        "price_clone_tg_userbot_lifetime_app": 25000,
        "price_clone_tg_userbot_daily_cloud": 10000,
        "price_clone_tg_userbot_daily_cli": 10000,
        "price_clone_tg_userbot_daily_app": 10000,
        "price_clone_wa_bot_regular_cloud": 300000,
        "price_clone_wa_bot_regular_cli": 50000,
        "price_clone_wa_bot_regular_app": 5000,
        "price_clone_wa_bot_premium_cloud": 600000,
        "price_clone_wa_bot_premium_cli": 100000,
        "price_clone_wa_bot_premium_app": 10000,
        "price_clone_wa_bot_ultra_cloud": 1000000,
        "price_clone_wa_bot_ultra_cli": 50000,
        "price_clone_wa_bot_ultra_app": 5000,
        "price_clone_wa_bot_lifetime_cloud": 2500000,
        "price_clone_wa_bot_lifetime_cli": 250000,
        "price_clone_wa_bot_lifetime_app": 25000,
        "price_clone_wa_bot_daily_cloud": 10000,
        "price_clone_wa_bot_daily_cli": 10000,
        "price_clone_wa_bot_daily_app": 10000,
      };

  static Map initData({
    bool isUser = false,
  }) {
    Map jsonData = {
      "state": {},
      "coin": 0,
      "init_coin": 0,
      "premium_expired_date": 0,
      "quota_premium": 25,
      "quota_nonpremium": 10,
      "count_send_msg": 0,
      "reset_auto_forward_limit_date": 0,
      "language_code": "id",
      "plan_type": "free",
    };
    if (!isUser) {
      jsonData.updateVoid(
        data: {
          "check_user": DefaultDataBase.check_user,
          "media": DefaultDataBase.media,
          "media_more": DefaultDataBase.media_more,
          "content_message": DefaultDataBase.content_message,
          "content_message_option": DefaultDataBase.content_message_option,
          "is_global_blacklist": true,
          "service_message": DefaultDataBase.service_message,
          ...DefaultDataBase.blacklist_word,
          "auto_forward_timer_free": "0-1-0-0-0-0",
          "auto_forward_timer_regular": "0-0-30-0-0-0",
          "auto_forward_timer_premium": "0-0-15-0-0-0",
          "auto_forward_timer_ultra": "0-0-5-0-0-0",
          "price_regular": 5000,
          "price_premium": 15000,
          "price_ultra": 25000,
          "is_protect_content": false,
          "is_welcome": false,
          "is_welcome_keyboard": false,
          "is_welcome_auto_delete": false,
          "is_start_msg": false,
          "is_start_keyboard": false,
          "admins": [],
          "start_msg": {},
          "start_keyboard": {},
          "welcome_msg": {},
          "welcome_keyboard": {},
          "is_force_subscribe": false,
          "is_auto_forward_chat": false,
          "auto_forwards": [],
          "start_msg_text": "Hello Saya adalah robot",
          "start_msg_on": false,
          "chat_force_subscribes": [],
          "chatbots": [],
          "chats": [],
          "free_date": 0,
          "afk_date": 0,
          "afk_msgs": [],
          "repeat_msg_mode": "random",
          "dynamic_repeat_msg_id": [],
          "afk_chat_types": [
            "private",
            "group",
            "channel",
          ],
          "auto_read_chats": [
            "private",
            "group",
            "channel",
          ],
          "is_auto_delete": false,
          "auto_delete_duration": 20,
          "auto_delete_chat_types": [
            "private",
            "group",
            "channel",
          ],
          "join_date": 1671956266,
          "can_join_groups": true,
          "can_read_all_group_messages": false,
          "supports_inline_queries": false,
          "type": "supergroup",
          "language_code": "",
          "is_option_protect_content": false,
          "state": {},
          "wallet": {
            "@type": "walletType",
            "type": "xendit",
            "api_key": "",
            "user_id": "",
          },
          "is_secret_data": false,
          "is_note_msg": false,
          "note_msgs": [],
          "note_msg_chat_types": [
            "private",
          ],
          "is_repeat_msg": false,
          "repeat_msg_count": 10,
          "repeat_msg_chat_types": ["group", "private", "channel"],
          "repeat_msgs": [],
          "repeat_msg_chats": [],
          "is_init_msg": false,
          "init_msgs": [],
          "init_msg_chat_ids": [1213131],
          "products": [],
          "is_forms": false,
          "forms": [],
          "is_spambot": false,
          "spambot_expire_date": 0,
          "is_task": false,
          "tasks": [],
          "is_refferal": false,
          "refferals": [],
          "price_unrestrict_ban": 1000,
          "price_unrestrict_mute": 500,
          ...DefaultDataBase.price_clone,
        },
      );
    }
    return jsonData;
  }

  static Map initDataWa({
    bool isUser = false,
  }) {
    Map jsonData = {
      "state": {},
      "coin": 0,
      "init_coin": 0,
      "premium_expired_date": 0,
      "quota_premium": 25,
      "quota_nonpremium": 10,
      "count_send_msg": 0,
      "reset_auto_forward_limit_date": 0,
      "language_code": "id",
    };
    if (!isUser) {
      jsonData.updateVoid(
        data: {
          "check_user": DefaultDataBase.check_user,
          "media": DefaultDataBase.media,
          "media_more": DefaultDataBase.media_more,
          "content_message": DefaultDataBase.content_message,
          "content_message_option": DefaultDataBase.content_message_option,
          "is_global_blacklist": true,
          "service_message": DefaultDataBase.service_message,
          ...DefaultDataBase.blacklist_word,
          "is_protect_content": false,
          "is_welcome": false,
          "is_welcome_keyboard": false,
          "is_welcome_auto_delete": false,
          "is_start_msg": false,
          "is_start_keyboard": false,
          "admins": [],
          "is_must_have_content_msg": false,
          "is_must_have_content_msg_respond": false,
          "must_have_content_msg_respond": {
            "date": 1672233175,
            "can_reply_to_message_id": false,
            "can_disable_web_page_preview": false,
            "can_allow_sending_without_reply": true,
            "can_deep_link": false,
            "can_response_callback_data": false,
            "can_send_chat_action": false,
            "acces_msg": "all",
            "request_api": "sendMessage",
            "type": "text",
            "text": """
{from_mention},

Maaf pesan anda saya hapus
karena tidak mengandung kata / caption wajib / keluar context dari {chat_title}
"""
                .trim(),
            "file_unique_id": "97p0cdz1ihmbr1x",
            "from_user_id": 5604530106,
            "from_platform": "telegram",
          },
          "must_have_content_msg_keyboard": {
            "remove_keyboard": false,
          },
          "must_have_content_msg": [],
          "start_msg": {},
          "start_keyboard": {},
          "welcome_msg": {},
          "welcome_keyboard": {},
          "is_force_subscribe": false,
          "is_auto_forward_chat": false,
          "auto_forwards": [],
          "start_msg_text": "Hello Saya adalah robot",
          "start_msg_on": false,
          "chat_force_subscribes": [],
          "chatbots": [],
          "chats": [],
          "free_date": 0,
          "afk_date": 0,
          "afk_msgs": [],
          "repeat_msg_mode": "random",
          "dynamic_repeat_msg_id": [],
          "afk_chat_types": [
            "private",
            "group",
            "channel",
          ],
          "auto_read_chats": [
            "private",
            "group",
            "channel",
          ],
          "is_auto_delete": false,
          "auto_delete_duration": 20,
          "auto_delete_chat_types": [
            "private",
            "group",
            "channel",
          ],
          "join_date": 1671956266,
          "can_join_groups": true,
          "can_read_all_group_messages": false,
          "supports_inline_queries": false,
          "type": "supergroup",
          "language_code": "",
          "is_option_protect_content": false,
          "state": {},
          "wallet": {
            "@type": "walletType",
            "type": "xendit",
            "api_key": "",
            "user_id": "",
          },
          "is_secret_data": false,
          "is_note_msg": false,
          "note_msgs": [],
          "note_msg_chat_types": [
            "private",
          ],
          "is_repeat_msg": false,
          "repeat_msg_count": 10,
          "repeat_msg_chat_types": ["group", "private", "channel"],
          "repeat_msgs": [],
          "repeat_msg_chats": [],
          "is_init_msg": false,
          "init_msgs": [],
          "init_msg_chat_ids": [1213131],
          "products": [],
          "is_forms": false,
          "forms": [],
          "is_spambot": false,
          "spambot_expire_date": 0,
          "is_task": false,
          "tasks": [],
          "is_refferal": false,
          "refferals": [],
          "price_unrestrict_ban": 1000,
          "price_unrestrict_mute": 500,
          ...DefaultDataBase.price_clone,
        },
      );
    }
    return jsonData;
  }

  static Map get autoForwardChat => {
        "is_force_subscribe": true,
        "is_forward": false,
        "is_on": true,
        "forward_type_content": [],
        "users": [],
        "option": {},
        "respond_msd": {},
        "ignore_msg": {},
        "trigger": "",
        "ignore_trigger": "",
        "is_limit": false,
        "count_limit": 10,
        "price": 0,
        "msg_max_length": 4096,
        "msg_min_length": 0,

//         "is_must_have_content_msg": true,
//         "is_must_have_content_msg_respond": true,
//         "is_clear_hastagh": true,
//         "is_msg_respond": true,
//         "msg_respond": {
//           "date": 1688753865,
//           "can_reply_to_message_id": false,
//           "can_disable_web_page_preview": false,
//           "can_allow_sending_without_reply": true,
//           "can_deep_link": false,
//           "can_response_callback_data": false,
//           "can_send_chat_action": false,
//           "acces_msg": "all",
//           "request_api": "sendMessage",
//           "type": "text",
//           "text": """
// Hai {from_mention}, Pesan anda berhasil kami post
// """
//               .trim(),
//           "file_unique_id": "mhl6aUwu1rzmFxM",
//           "from_user_id": 5692078209,
//           "from_platform": "telegram",
//           "method": "sendMessage",
//         },
//         "msg_respond_keyboard": {
//           "inline_keyboard": [
//             [
//               {
//                 "text": "Tutorial",
//                 "url": "https://t.me/{from_username}",
//               }
//             ],
//           ]
//         },
//         "msg_keyboard": {
//           "inline_keyboard": [
//             [
//               {
//                 "text": "{from_title}",
//                 "url": "https://t.me/{from_username}",
//               }
//             ],
//             [
//               {
//                 "text": "Send Bio",
//                 "url": "{chat_link}",
//               }
//             ],
//           ]
//         },
//         "must_have_content_msg_respond": {
//           "date": 1672233175,
//           "can_reply_to_message_id": false,
//           "can_disable_web_page_preview": false,
//           "can_allow_sending_without_reply": true,
//           "can_deep_link": false,
//           "can_response_callback_data": false,
//           "can_send_chat_action": false,
//           "acces_msg": "all",
//           "request_api": "sendMessage",
//           "type": "text",
//           "text": """
// Hei {from_mention},

// Maaf Pesan Promote Anda Tidak bisa kami proses
// Karena Salah Format

// Silahkan Kamu tonton Tutorial Di bawah ini ya dengan benar makasi cantip
// """
//               .trim(),
//           "file_unique_id": "97p0cdz1ihmbr1x",
//           "from_user_id": 5604530106,
//           "from_platform": "telegram",
//         },
//         "must_have_content_msg_keyboard": {
//           "inline_keyboard": [
//             [
//               {
//                 "text": "Tutorial",
//                 "url": "https://www.youtube.com/watch?v=FvHIdVL3bbY",
//               }
//             ]
//           ]
//         },
//         "must_have_content_msg": [
//           [
//             "(need|nit|temenan|berteman|moots|mau|mutualan|mutual)",
//             "(fambest|cp|istri|suami|pacar|bf|gf|ayang|fmbst)",
//             "azka",
//           ],
//         ],
      };

  static Map get chatData => {
        "is_on": true,
        "forward_type_content": [],
      };
}
