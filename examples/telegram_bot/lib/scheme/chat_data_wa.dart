// ignore_for_file: non_constant_identifier_names, unused_import
import "json_dart.dart";
// import "dart:convert";

import "limit_data_state.dart";
import "afk_msgs.dart";
import "check_user.dart";
import "media.dart";
import "media_more.dart";
import "content_message.dart";
import "content_message_option.dart";
import "service_message.dart";
import "admins.dart";
import "state.dart";
import "wallet_type.dart";
import "wallet_msg.dart";
import "wallet_keyboard.dart";
import "chats.dart";
import "chat_force_subscribes.dart";
import "transaction.dart";
import "auto_forwards.dart";
import "note_msgs.dart";
import "start_msg.dart";
import "start_keyboard.dart";
import "end_keyboard.dart";
import "welcome_msg.dart";
import "welcome_keyboard.dart";
import "repeat_msgs.dart";
import "repeat_msg_chats.dart";
import "init_msgs.dart";
import "items.dart";
import "forms.dart";
import "method.dart";
import "ee.dart";
import "secret_data_user.dart";
import "acces_msg_data.dart";
import "acces_keyboard_data.dart";
import "user_chat_data.dart";

class ChatDataWa extends JsonScheme {
  ChatDataWa(super.rawData);

  static Map get defaultData {
    return {
      "@type": "chatDataWa",
      "id": "",
      "first_name": "",
      "name": "",
      "title": "",
      "type": "",
      "username": "masmkamskamksmak",
      "last_name": "",
      "is_bot": true,
      "is_auto_read": true,
      "is_auto_clear": true,
      "is_auto_block": false,
      "is_afk": false,
      "is_ai_chatbot": false,
      "is_ai_task": false,
      "is_blocked": false,
      "is_mute": false,
      "ads_gateway_price_day": 10000,
      "ads_gateway_price_pinned": 10000,
      "ads_gateway_price_repeat_msg_day": 10000,
      "ads_gateway_blacklist_word": "",
      "is_ads_gateway": false,
      "ads_gateway_is_require_review": false,
      "ads_gateway_type_content": ["text"],
      "is_subscribe": false,
      "is_start_msg_log": false,
      "is_restrict_log": false,
      "is_global_blacklist": false,
      "subscribe_expire_date": 0,
      "dynamic_repeat_msg_count": 0,
      "is_natural": false,
      "is_core_pm": false,
      "language_id": "",
      "repeat_msg_mode": "sort",
      "dynamic_core_msg_count": 0,
      "dynamic_repeat_msg_id": ["s"],
      "limit_data_state": {
        "@type": "limit_data_state",
        "is_auto_read": true,
        "is_auto_block": false,
        "is_afk": false,
        "is_ai_chatbot": false,
        "is_ai_task": false,
        "is_force_subscribe": false,
        "is_secret_data": false,
        "is_secret_data_user": false
      },
      "free_date": 0,
      "afk_date": 1211414,
      "afk_msgs": [
        {
          "date": 1672232959,
          "can_reply_to_message_id": false,
          "can_disable_web_page_preview": false,
          "can_allow_sending_without_reply": true,
          "can_deep_link": false,
          "can_response_callback_data": false,
          "can_send_chat_action": false,
          "acces_msg": "all",
          "request_api": "sendMessage",
          "type": "text",
          "text": "hai",
          "file_unique_id": "4tca8lsn78k1d27",
          "from_user_id": 5604530106,
          "from_platform": "telegram"
        }
      ],
      "afk_chat_types": ["private", "group", "channel"],
      "auto_read_chats": ["private", "group", "channel"],
      "is_auto_delete": false,
      "auto_delete_duration": 20,
      "auto_delete_chat_types": ["private", "group", "channel"],
      "join_date": 1671956266,
      "can_join_groups": true,
      "can_read_all_group_messages": false,
      "supports_inline_queries": false,
      "language_code": "",
      "is_option_protect_content": false,
      "is_translate": false,
      "check_user": {
        "@type": "check_user",
        "first_name": {
          "empty": "",
          "not_empty": "",
          "whitelist": "",
          "blacklist": "",
          "restrict": ""
        },
        "last_name": {
          "empty": "",
          "not_empty": "",
          "whitelist": "",
          "blacklist": "",
          "restrict": ""
        },
        "username": {
          "empty": "",
          "not_empty": "",
          "whitelist": "",
          "blacklist": "",
          "restrict": ""
        },
        "profile_photo": {
          "empty": "",
          "not_empty": "",
          "whitelist": "",
          "blacklist": "",
          "restrict": ""
        },
        "bio": {
          "empty": "",
          "not_empty": "",
          "whitelist": "",
          "blacklist": "",
          "restrict": ""
        },
        "sender_chat": {
          "empty": "",
          "not_empty": "",
          "whitelist_chat_ids": [],
          "blacklist_chat_ids": [],
          "restrict": ""
        }
      },
      "media": {
        "@type": "media",
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
        "video_note": "free"
      },
      "media_more": {
        "@type": "media_more",
        "all": "free",
        "document": "free",
        "game": "free",
        "contact": "free",
        "poll": "free",
        "location": "free",
        "invoice": "free",
        "bot_inline": "free",
        "forward_date": "free",
        "reply_to_message": "free"
      },
      "content_message": {
        "@type": "content_message",
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
        "pre": "free"
      },
      "content_message_option": {
        "@type": "content_message_option",
        "type": "all",
        "min_msg": "free",
        "max_msg": "free",
        "min_msg_length": 0,
        "max_msg_length": 0
      },
      "service_message": {
        "@type": "service_message",
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
        "voice_chat_participants_invited": "free"
      },
      "admins": [
        {
          "user": {
            "id": 5735523822,
            "is_bot": true,
            "first_name": "Azkadev Menfess Telegram Bot",
            "username": "AzkadevMenfessTelegramBot"
          },
          "status": "administrator",
          "can_be_edited": false,
          "can_manage_chat": true,
          "can_change_info": true,
          "can_delete_messages": true,
          "can_invite_users": true,
          "can_restrict_members": true,
          "can_pin_messages": true,
          "can_promote_members": true,
          "can_manage_video_chats": true,
          "is_anonymous": false,
          "can_manage_voice_chats": true
        },
        {
          "user": {
            "id": 5604530106,
            "is_bot": false,
            "first_name": "Kazekage",
            "username": "sadssfsmfm",
            "language_code": "en"
          },
          "status": "creator",
          "is_anonymous": false
        }
      ],
      "state": {
        "@type": "state",
        "chat_id": 121,
        "user_id": 123124,
        "setting": "",
        "message_id": 12141,
        "setup": {"id": "setChat", "chat_id": 31313131},
        "message_data": "",
        "is_without_delete_msg_me": false,
        "is_delete_msg": false,
        "step": "",
        "version": "",
        "data": {
          "@type": "data",
          "month": 0,
          "token_bot": "",
          "username": "",
          "password": "",
          "token": "",
          "target_user_id": 0,
          "amount": 0,
          "user_id": 0,
          "invoice": {
            "@type": "invoice",
            "id": "6400761f118264bbc49c871b",
            "status": "pending",
            "external_id": "oaksoaks",
            "amount": 50000,
            "title": "HEXAMINATE",
            "profile_picture": {
              "@type": "profilePictureUrl",
              "url":
                  "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png"
            },
            "url": "https://checkout.xendit.co/web/6400761f118264bbc49c871b"
          }
        }
      },
      "wallet": {
        "@type": "walletType",
        "type": "xendit",
        "api_key": "",
        "user_id": ""
      },
      "is_wallet_can_top_up_manual": false,
      "wallet_msg": {
        "@type": "wallet_msg",
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
        "text": "",
        "file_unique_id": "97p0cdz1ihmbr1x",
        "from_user_id": 5604530106,
        "from_platform": "telegram"
      },
      "wallet_keyboard": {
        "@type": "walletKeyboard",
        "inline_keyboard": [
          [
            {
              "@type": "inlineKeyboard",
              "text": "",
              "url": "",
              "callback_data": ""
            }
          ]
        ]
      },
      "chats": [
        {
          "id": 0,
          "title": "asaskak",
          "username": "masmkamskamksmak",
          "type": "supergroup",
          "invite_link": "https://t.me/+0Aw90MEh2VA5MzI1",
          "join_to_send_messages": true,
          "message_auto_delete_time": 86400,
          "has_protected_content": true,
          "is_on": false,
          "chat_type_contents": ["log", "transaction", "restrict", "start"]
        }
      ],
      "init_coin": 0,
      "price_unrestrict_ban": 1000,
      "price_unrestrict_mute": 500,
      "price_premium": 0,
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
      "premium_expired_date": 13151515151,
      "quota_premium": 1000,
      "quota_nonpremium": 500,
      "count_send_msg": 0,
      "reset_auto_forward_limit_date": 242653636,
      "text_payment": "",
      "coin": 0,
      "is_force_subscribe": false,
      "is_secret_data": false,
      "is_secret_data_user": false,
      "chat_force_subscribes": [
        {
          "id": 0,
          "title": "asaskak",
          "username": "masmkamskamksmak",
          "type": "supergroup",
          "invite_link": "https://t.me/+0Aw90MEh2VA5MzI1",
          "join_to_send_messages": true,
          "message_auto_delete_time": 86400,
          "has_protected_content": true
        }
      ],
      "is_auto_forward_chat": false,
      "transactions": [
        {
          "@type": "transaction",
          "name": "",
          "price": 0,
          "invoice": {
            "@type": "invoice",
            "id": "6400761f118264bbc49c871b",
            "status": "pending",
            "external_id": "oaksoaks",
            "amount": 50000,
            "title": "HEXAMINATE",
            "profile_picture": {
              "@type": "profilePictureUrl",
              "url":
                  "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png"
            },
            "url": "https://checkout.xendit.co/web/6400761f118264bbc49c871b"
          }
        }
      ],
      "auto_forwards": [
        {
          "id": 0,
          "title": "asaskak",
          "username": "masmkamskamksmak",
          "type": "supergroup",
          "invite_link": "https://t.me/+0Aw90MEh2VA5MzI1",
          "join_to_send_messages": true,
          "message_auto_delete_time": 86400,
          "has_protected_content": true,
          "token_bot": "",
          "is_force_subscribe": false,
          "is_forward": false,
          "is_on": false,
          "is_require_premium": false,
          "forward_type_content": ["text"],
          "trigger": "",
          "ignore_trigger": "",
          "msg_min_length": 0,
          "msg_max_length": 4096,
          "is_log": false,
          "msg_keyboard": {
            "@type": "msgKeyboard",
            "inline_keyboard": [
              [
                {
                  "@type": "inlineKeyboard",
                  "text": "",
                  "url": "",
                  "callback_data": ""
                }
              ]
            ]
          },
          "is_antispam": false,
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
            "text":
                "{from_mention},\n\nMaaf pesan anda saya hapus\nkarena tidak mengandung kata / caption wajib / keluar context dari {chat_title}",
            "file_unique_id": "97p0cdz1ihmbr1x",
            "from_user_id": 5604530106,
            "from_platform": "telegram"
          },
          "must_have_content_msg_keyboard": {"remove_keyboard": false},
          "must_have_content_msg": [
            ["dd", "sds"],
            ["dsd", "ds"]
          ]
        }
      ],
      "is_note_msg": false,
      "note_msgs": [
        {
          "message": "hai",
          "respond": {
            "date": 1672232959,
            "can_reply_to_message_id": false,
            "can_disable_web_page_preview": false,
            "can_allow_sending_without_reply": true,
            "can_deep_link": false,
            "can_response_callback_data": false,
            "can_send_chat_action": false,
            "acces_msg": "all",
            "request_api": "sendMessage",
            "type": "text",
            "text": "/addchatbot hai",
            "file_unique_id": "4tca8lsn78k1d27",
            "from_user_id": 5604530106,
            "from_platform": "telegram"
          }
        }
      ],
      "note_msg_chat_types": ["private"],
      "start_msg_text": "azka",
      "start_msg_on": true,
      "is_welcome": false,
      "is_welcome_keyboard": false,
      "is_welcome_auto_delete": false,
      "is_start_msg": false,
      "is_start_keyboard": false,
      "start_msg": {
        "@type": "start_msg",
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
        "text": "halo",
        "file_unique_id": "97p0cdz1ihmbr1x",
        "from_user_id": 5604530106,
        "from_platform": "telegram"
      },
      "start_keyboard": {"@type": "start_keyboard", "remove_keyboard": false},
      "is_end_keyboard": false,
      "end_keyboard": {"@type": "end_keyboard", "remove_keyboard": false},
      "welcome_msg": {
        "@type": "welcome_msg",
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
        "text": "halo",
        "file_unique_id": "97p0cdz1ihmbr1x",
        "from_user_id": 5604530106,
        "from_platform": "telegram"
      },
      "welcome_keyboard": {
        "@type": "welcome_keyboard",
        "remove_keyboard": false
      },
      "is_repeat_msg": false,
      "repeat_msg_count": 10,
      "repeat_msg_chat_types": ["group", "private", "channel"],
      "repeat_msgs": [
        {
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
          "text": "halo",
          "file_unique_id": "97p0cdz1ihmbr1x",
          "from_user_id": 5604530106,
          "from_platform": "telegram"
        }
      ],
      "repeat_msg_chats": [
        {"chat_id": -100231301, "msg_count": 10}
      ],
      "is_init_msg": false,
      "init_msgs": [
        {
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
          "text": "halo",
          "file_unique_id": "97p0cdz1ihmbr1x",
          "from_user_id": 5604530106,
          "from_platform": "telegram"
        }
      ],
      "is_init_msg_user_receive": false,
      "items": [
        {
          "name": "Netpriv Harian 7d",
          "description": "",
          "price": 35000,
          "stock": 12,
          "total_sold": 0,
          "unique_id": "abc"
        }
      ],
      "is_forms": false,
      "forms": [{}],
      "is_spambot": false,
      "spambot_expire_date": 0,
      "is_task": false,
      "tasks": [
        {
          "@type": "method",
          "action": {"@type": "sendTelegram", "data": {}},
          "trigger": {"@type": "trigger"}
        }
      ],
      "is_refferal": false,
      "refferals": [
        {"@type": "ee"}
      ],
      "secret_data": {
        "@type": "SecretDataUser",
        "user_id": 0,
        "phone_number": "",
        "location": {
          "@type": "SecretDataLocation",
          "latitude": -7.452444,
          "longitude": 109.16865
        },
        "date": 0,
        "update_date": 0
      },
      "is_acces_require": false,
      "is_acces_user_payed": false,
      "price_acces": 1000,
      "acces_msg": {
        "@type": "accesMsgData",
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
        "text": "halo",
        "file_unique_id": "97p0cdz1ihmbr1x",
        "from_user_id": 5604530106,
        "from_platform": "telegram"
      },
      "acces_keyboard": {
        "@type": "accesKeyboardData",
        "remove_keyboard": false
      },
      "user": {"@type": "userChatData"}
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

  String? get first_name {
    try {
      if (rawData["first_name"] is String == false) {
        return null;
      }
      return rawData["first_name"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      if (rawData["name"] is String == false) {
        return null;
      }
      return rawData["name"] as String;
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

  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get username {
    try {
      if (rawData["username"] is String == false) {
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get last_name {
    try {
      if (rawData["last_name"] is String == false) {
        return null;
      }
      return rawData["last_name"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get is_bot {
    try {
      if (rawData["is_bot"] is bool == false) {
        return null;
      }
      return rawData["is_bot"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_auto_read {
    try {
      if (rawData["is_auto_read"] is bool == false) {
        return null;
      }
      return rawData["is_auto_read"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_auto_clear {
    try {
      if (rawData["is_auto_clear"] is bool == false) {
        return null;
      }
      return rawData["is_auto_clear"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_auto_block {
    try {
      if (rawData["is_auto_block"] is bool == false) {
        return null;
      }
      return rawData["is_auto_block"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_afk {
    try {
      if (rawData["is_afk"] is bool == false) {
        return null;
      }
      return rawData["is_afk"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_ai_chatbot {
    try {
      if (rawData["is_ai_chatbot"] is bool == false) {
        return null;
      }
      return rawData["is_ai_chatbot"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_ai_task {
    try {
      if (rawData["is_ai_task"] is bool == false) {
        return null;
      }
      return rawData["is_ai_task"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_blocked {
    try {
      if (rawData["is_blocked"] is bool == false) {
        return null;
      }
      return rawData["is_blocked"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_mute {
    try {
      if (rawData["is_mute"] is bool == false) {
        return null;
      }
      return rawData["is_mute"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get ads_gateway_price_day {
    try {
      if (rawData["ads_gateway_price_day"] is int == false) {
        return null;
      }
      return rawData["ads_gateway_price_day"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get ads_gateway_price_pinned {
    try {
      if (rawData["ads_gateway_price_pinned"] is int == false) {
        return null;
      }
      return rawData["ads_gateway_price_pinned"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get ads_gateway_price_repeat_msg_day {
    try {
      if (rawData["ads_gateway_price_repeat_msg_day"] is int == false) {
        return null;
      }
      return rawData["ads_gateway_price_repeat_msg_day"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get ads_gateway_blacklist_word {
    try {
      if (rawData["ads_gateway_blacklist_word"] is String == false) {
        return null;
      }
      return rawData["ads_gateway_blacklist_word"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get is_ads_gateway {
    try {
      if (rawData["is_ads_gateway"] is bool == false) {
        return null;
      }
      return rawData["is_ads_gateway"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get ads_gateway_is_require_review {
    try {
      if (rawData["ads_gateway_is_require_review"] is bool == false) {
        return null;
      }
      return rawData["ads_gateway_is_require_review"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<String> get ads_gateway_type_content {
    try {
      if (rawData["ads_gateway_type_content"] is List == false) {
        return [];
      }
      return (rawData["ads_gateway_type_content"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_subscribe {
    try {
      if (rawData["is_subscribe"] is bool == false) {
        return null;
      }
      return rawData["is_subscribe"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_start_msg_log {
    try {
      if (rawData["is_start_msg_log"] is bool == false) {
        return null;
      }
      return rawData["is_start_msg_log"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_restrict_log {
    try {
      if (rawData["is_restrict_log"] is bool == false) {
        return null;
      }
      return rawData["is_restrict_log"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_global_blacklist {
    try {
      if (rawData["is_global_blacklist"] is bool == false) {
        return null;
      }
      return rawData["is_global_blacklist"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get subscribe_expire_date {
    try {
      if (rawData["subscribe_expire_date"] is int == false) {
        return null;
      }
      return rawData["subscribe_expire_date"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get dynamic_repeat_msg_count {
    try {
      if (rawData["dynamic_repeat_msg_count"] is int == false) {
        return null;
      }
      return rawData["dynamic_repeat_msg_count"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get is_natural {
    try {
      if (rawData["is_natural"] is bool == false) {
        return null;
      }
      return rawData["is_natural"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_core_pm {
    try {
      if (rawData["is_core_pm"] is bool == false) {
        return null;
      }
      return rawData["is_core_pm"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get language_id {
    try {
      if (rawData["language_id"] is String == false) {
        return null;
      }
      return rawData["language_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get repeat_msg_mode {
    try {
      if (rawData["repeat_msg_mode"] is String == false) {
        return null;
      }
      return rawData["repeat_msg_mode"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get dynamic_core_msg_count {
    try {
      if (rawData["dynamic_core_msg_count"] is int == false) {
        return null;
      }
      return rawData["dynamic_core_msg_count"] as int;
    } catch (e) {
      return null;
    }
  }

  List<String> get dynamic_repeat_msg_id {
    try {
      if (rawData["dynamic_repeat_msg_id"] is List == false) {
        return [];
      }
      return (rawData["dynamic_repeat_msg_id"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  LimitDataState get limit_data_state {
    try {
      if (rawData["limit_data_state"] is Map == false) {
        return LimitDataState({});
      }
      return LimitDataState(rawData["limit_data_state"] as Map);
    } catch (e) {
      return LimitDataState({});
    }
  }

  int? get free_date {
    try {
      if (rawData["free_date"] is int == false) {
        return null;
      }
      return rawData["free_date"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get afk_date {
    try {
      if (rawData["afk_date"] is int == false) {
        return null;
      }
      return rawData["afk_date"] as int;
    } catch (e) {
      return null;
    }
  }

  List<AfkMsgs> get afk_msgs {
    try {
      if (rawData["afk_msgs"] is List == false) {
        return [];
      }
      return (rawData["afk_msgs"] as List)
          .map((e) => AfkMsgs(e as Map))
          .toList()
          .cast<AfkMsgs>();
    } catch (e) {
      return [];
    }
  }

  List<String> get afk_chat_types {
    try {
      if (rawData["afk_chat_types"] is List == false) {
        return [];
      }
      return (rawData["afk_chat_types"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  List<String> get auto_read_chats {
    try {
      if (rawData["auto_read_chats"] is List == false) {
        return [];
      }
      return (rawData["auto_read_chats"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_auto_delete {
    try {
      if (rawData["is_auto_delete"] is bool == false) {
        return null;
      }
      return rawData["is_auto_delete"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get auto_delete_duration {
    try {
      if (rawData["auto_delete_duration"] is int == false) {
        return null;
      }
      return rawData["auto_delete_duration"] as int;
    } catch (e) {
      return null;
    }
  }

  List<String> get auto_delete_chat_types {
    try {
      if (rawData["auto_delete_chat_types"] is List == false) {
        return [];
      }
      return (rawData["auto_delete_chat_types"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  int? get join_date {
    try {
      if (rawData["join_date"] is int == false) {
        return null;
      }
      return rawData["join_date"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get can_join_groups {
    try {
      if (rawData["can_join_groups"] is bool == false) {
        return null;
      }
      return rawData["can_join_groups"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get can_read_all_group_messages {
    try {
      if (rawData["can_read_all_group_messages"] is bool == false) {
        return null;
      }
      return rawData["can_read_all_group_messages"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get supports_inline_queries {
    try {
      if (rawData["supports_inline_queries"] is bool == false) {
        return null;
      }
      return rawData["supports_inline_queries"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get language_code {
    try {
      if (rawData["language_code"] is String == false) {
        return null;
      }
      return rawData["language_code"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get is_option_protect_content {
    try {
      if (rawData["is_option_protect_content"] is bool == false) {
        return null;
      }
      return rawData["is_option_protect_content"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_translate {
    try {
      if (rawData["is_translate"] is bool == false) {
        return null;
      }
      return rawData["is_translate"] as bool;
    } catch (e) {
      return null;
    }
  }

  CheckUser get check_user {
    try {
      if (rawData["check_user"] is Map == false) {
        return CheckUser({});
      }
      return CheckUser(rawData["check_user"] as Map);
    } catch (e) {
      return CheckUser({});
    }
  }

  Media get media {
    try {
      if (rawData["media"] is Map == false) {
        return Media({});
      }
      return Media(rawData["media"] as Map);
    } catch (e) {
      return Media({});
    }
  }

  MediaMore get media_more {
    try {
      if (rawData["media_more"] is Map == false) {
        return MediaMore({});
      }
      return MediaMore(rawData["media_more"] as Map);
    } catch (e) {
      return MediaMore({});
    }
  }

  ContentMessage get content_message {
    try {
      if (rawData["content_message"] is Map == false) {
        return ContentMessage({});
      }
      return ContentMessage(rawData["content_message"] as Map);
    } catch (e) {
      return ContentMessage({});
    }
  }

  ContentMessageOption get content_message_option {
    try {
      if (rawData["content_message_option"] is Map == false) {
        return ContentMessageOption({});
      }
      return ContentMessageOption(rawData["content_message_option"] as Map);
    } catch (e) {
      return ContentMessageOption({});
    }
  }

  ServiceMessage get service_message {
    try {
      if (rawData["service_message"] is Map == false) {
        return ServiceMessage({});
      }
      return ServiceMessage(rawData["service_message"] as Map);
    } catch (e) {
      return ServiceMessage({});
    }
  }

  List<Admins> get admins {
    try {
      if (rawData["admins"] is List == false) {
        return [];
      }
      return (rawData["admins"] as List)
          .map((e) => Admins(e as Map))
          .toList()
          .cast<Admins>();
    } catch (e) {
      return [];
    }
  }

  State get state {
    try {
      if (rawData["state"] is Map == false) {
        return State({});
      }
      return State(rawData["state"] as Map);
    } catch (e) {
      return State({});
    }
  }

  WalletType get wallet {
    try {
      if (rawData["wallet"] is Map == false) {
        return WalletType({});
      }
      return WalletType(rawData["wallet"] as Map);
    } catch (e) {
      return WalletType({});
    }
  }

  bool? get is_wallet_can_top_up_manual {
    try {
      if (rawData["is_wallet_can_top_up_manual"] is bool == false) {
        return null;
      }
      return rawData["is_wallet_can_top_up_manual"] as bool;
    } catch (e) {
      return null;
    }
  }

  WalletMsg get wallet_msg {
    try {
      if (rawData["wallet_msg"] is Map == false) {
        return WalletMsg({});
      }
      return WalletMsg(rawData["wallet_msg"] as Map);
    } catch (e) {
      return WalletMsg({});
    }
  }

  WalletKeyboard get wallet_keyboard {
    try {
      if (rawData["wallet_keyboard"] is Map == false) {
        return WalletKeyboard({});
      }
      return WalletKeyboard(rawData["wallet_keyboard"] as Map);
    } catch (e) {
      return WalletKeyboard({});
    }
  }

  List<Chats> get chats {
    try {
      if (rawData["chats"] is List == false) {
        return [];
      }
      return (rawData["chats"] as List)
          .map((e) => Chats(e as Map))
          .toList()
          .cast<Chats>();
    } catch (e) {
      return [];
    }
  }

  int? get init_coin {
    try {
      if (rawData["init_coin"] is int == false) {
        return null;
      }
      return rawData["init_coin"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_unrestrict_ban {
    try {
      if (rawData["price_unrestrict_ban"] is int == false) {
        return null;
      }
      return rawData["price_unrestrict_ban"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_unrestrict_mute {
    try {
      if (rawData["price_unrestrict_mute"] is int == false) {
        return null;
      }
      return rawData["price_unrestrict_mute"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_premium {
    try {
      if (rawData["price_premium"] is int == false) {
        return null;
      }
      return rawData["price_premium"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_regular_cloud {
    try {
      if (rawData["price_clone_ai_bot_regular_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_regular_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_regular_cli {
    try {
      if (rawData["price_clone_ai_bot_regular_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_regular_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_regular_app {
    try {
      if (rawData["price_clone_ai_bot_regular_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_regular_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_premium_cloud {
    try {
      if (rawData["price_clone_ai_bot_premium_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_premium_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_premium_cli {
    try {
      if (rawData["price_clone_ai_bot_premium_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_premium_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_premium_app {
    try {
      if (rawData["price_clone_ai_bot_premium_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_premium_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_ultra_cloud {
    try {
      if (rawData["price_clone_ai_bot_ultra_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_ultra_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_ultra_cli {
    try {
      if (rawData["price_clone_ai_bot_ultra_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_ultra_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_ultra_app {
    try {
      if (rawData["price_clone_ai_bot_ultra_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_ultra_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_lifetime_cloud {
    try {
      if (rawData["price_clone_ai_bot_lifetime_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_lifetime_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_lifetime_cli {
    try {
      if (rawData["price_clone_ai_bot_lifetime_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_lifetime_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_lifetime_app {
    try {
      if (rawData["price_clone_ai_bot_lifetime_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_lifetime_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_daily_cloud {
    try {
      if (rawData["price_clone_ai_bot_daily_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_daily_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_daily_cli {
    try {
      if (rawData["price_clone_ai_bot_daily_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_daily_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_ai_bot_daily_app {
    try {
      if (rawData["price_clone_ai_bot_daily_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_ai_bot_daily_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_regular_cloud {
    try {
      if (rawData["price_clone_discord_bot_regular_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_regular_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_regular_cli {
    try {
      if (rawData["price_clone_discord_bot_regular_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_regular_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_regular_app {
    try {
      if (rawData["price_clone_discord_bot_regular_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_regular_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_premium_cloud {
    try {
      if (rawData["price_clone_discord_bot_premium_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_premium_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_premium_cli {
    try {
      if (rawData["price_clone_discord_bot_premium_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_premium_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_premium_app {
    try {
      if (rawData["price_clone_discord_bot_premium_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_premium_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_ultra_cloud {
    try {
      if (rawData["price_clone_discord_bot_ultra_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_ultra_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_ultra_cli {
    try {
      if (rawData["price_clone_discord_bot_ultra_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_ultra_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_ultra_app {
    try {
      if (rawData["price_clone_discord_bot_ultra_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_ultra_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_lifetime_cloud {
    try {
      if (rawData["price_clone_discord_bot_lifetime_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_lifetime_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_lifetime_cli {
    try {
      if (rawData["price_clone_discord_bot_lifetime_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_lifetime_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_lifetime_app {
    try {
      if (rawData["price_clone_discord_bot_lifetime_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_lifetime_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_daily_cloud {
    try {
      if (rawData["price_clone_discord_bot_daily_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_daily_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_daily_cli {
    try {
      if (rawData["price_clone_discord_bot_daily_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_daily_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_discord_bot_daily_app {
    try {
      if (rawData["price_clone_discord_bot_daily_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_discord_bot_daily_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_regular_cloud {
    try {
      if (rawData["price_clone_google_bot_regular_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_regular_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_regular_cli {
    try {
      if (rawData["price_clone_google_bot_regular_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_regular_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_regular_app {
    try {
      if (rawData["price_clone_google_bot_regular_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_regular_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_premium_cloud {
    try {
      if (rawData["price_clone_google_bot_premium_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_premium_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_premium_cli {
    try {
      if (rawData["price_clone_google_bot_premium_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_premium_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_premium_app {
    try {
      if (rawData["price_clone_google_bot_premium_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_premium_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_ultra_cloud {
    try {
      if (rawData["price_clone_google_bot_ultra_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_ultra_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_ultra_cli {
    try {
      if (rawData["price_clone_google_bot_ultra_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_ultra_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_ultra_app {
    try {
      if (rawData["price_clone_google_bot_ultra_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_ultra_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_lifetime_cloud {
    try {
      if (rawData["price_clone_google_bot_lifetime_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_lifetime_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_lifetime_cli {
    try {
      if (rawData["price_clone_google_bot_lifetime_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_lifetime_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_lifetime_app {
    try {
      if (rawData["price_clone_google_bot_lifetime_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_lifetime_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_daily_cloud {
    try {
      if (rawData["price_clone_google_bot_daily_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_daily_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_daily_cli {
    try {
      if (rawData["price_clone_google_bot_daily_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_daily_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_google_bot_daily_app {
    try {
      if (rawData["price_clone_google_bot_daily_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_google_bot_daily_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_regular_cloud {
    try {
      if (rawData["price_clone_instagram_bot_regular_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_regular_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_regular_cli {
    try {
      if (rawData["price_clone_instagram_bot_regular_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_regular_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_regular_app {
    try {
      if (rawData["price_clone_instagram_bot_regular_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_regular_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_premium_cloud {
    try {
      if (rawData["price_clone_instagram_bot_premium_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_premium_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_premium_cli {
    try {
      if (rawData["price_clone_instagram_bot_premium_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_premium_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_premium_app {
    try {
      if (rawData["price_clone_instagram_bot_premium_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_premium_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_ultra_cloud {
    try {
      if (rawData["price_clone_instagram_bot_ultra_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_ultra_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_ultra_cli {
    try {
      if (rawData["price_clone_instagram_bot_ultra_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_ultra_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_ultra_app {
    try {
      if (rawData["price_clone_instagram_bot_ultra_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_ultra_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_lifetime_cloud {
    try {
      if (rawData["price_clone_instagram_bot_lifetime_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_lifetime_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_lifetime_cli {
    try {
      if (rawData["price_clone_instagram_bot_lifetime_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_lifetime_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_lifetime_app {
    try {
      if (rawData["price_clone_instagram_bot_lifetime_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_lifetime_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_daily_cloud {
    try {
      if (rawData["price_clone_instagram_bot_daily_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_daily_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_daily_cli {
    try {
      if (rawData["price_clone_instagram_bot_daily_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_daily_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_instagram_bot_daily_app {
    try {
      if (rawData["price_clone_instagram_bot_daily_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_instagram_bot_daily_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_regular_cloud {
    try {
      if (rawData["price_clone_socmed_bot_regular_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_regular_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_regular_cli {
    try {
      if (rawData["price_clone_socmed_bot_regular_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_regular_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_regular_app {
    try {
      if (rawData["price_clone_socmed_bot_regular_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_regular_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_premium_cloud {
    try {
      if (rawData["price_clone_socmed_bot_premium_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_premium_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_premium_cli {
    try {
      if (rawData["price_clone_socmed_bot_premium_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_premium_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_premium_app {
    try {
      if (rawData["price_clone_socmed_bot_premium_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_premium_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_ultra_cloud {
    try {
      if (rawData["price_clone_socmed_bot_ultra_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_ultra_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_ultra_cli {
    try {
      if (rawData["price_clone_socmed_bot_ultra_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_ultra_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_ultra_app {
    try {
      if (rawData["price_clone_socmed_bot_ultra_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_ultra_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_lifetime_cloud {
    try {
      if (rawData["price_clone_socmed_bot_lifetime_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_lifetime_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_lifetime_cli {
    try {
      if (rawData["price_clone_socmed_bot_lifetime_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_lifetime_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_lifetime_app {
    try {
      if (rawData["price_clone_socmed_bot_lifetime_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_lifetime_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_daily_cloud {
    try {
      if (rawData["price_clone_socmed_bot_daily_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_daily_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_daily_cli {
    try {
      if (rawData["price_clone_socmed_bot_daily_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_daily_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_socmed_bot_daily_app {
    try {
      if (rawData["price_clone_socmed_bot_daily_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_socmed_bot_daily_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_regular_cloud {
    try {
      if (rawData["price_clone_system_bot_regular_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_regular_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_regular_cli {
    try {
      if (rawData["price_clone_system_bot_regular_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_regular_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_regular_app {
    try {
      if (rawData["price_clone_system_bot_regular_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_regular_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_premium_cloud {
    try {
      if (rawData["price_clone_system_bot_premium_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_premium_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_premium_cli {
    try {
      if (rawData["price_clone_system_bot_premium_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_premium_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_premium_app {
    try {
      if (rawData["price_clone_system_bot_premium_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_premium_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_ultra_cloud {
    try {
      if (rawData["price_clone_system_bot_ultra_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_ultra_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_ultra_cli {
    try {
      if (rawData["price_clone_system_bot_ultra_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_ultra_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_ultra_app {
    try {
      if (rawData["price_clone_system_bot_ultra_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_ultra_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_lifetime_cloud {
    try {
      if (rawData["price_clone_system_bot_lifetime_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_lifetime_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_lifetime_cli {
    try {
      if (rawData["price_clone_system_bot_lifetime_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_lifetime_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_lifetime_app {
    try {
      if (rawData["price_clone_system_bot_lifetime_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_lifetime_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_daily_cloud {
    try {
      if (rawData["price_clone_system_bot_daily_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_daily_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_daily_cli {
    try {
      if (rawData["price_clone_system_bot_daily_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_daily_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_system_bot_daily_app {
    try {
      if (rawData["price_clone_system_bot_daily_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_system_bot_daily_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_regular_cloud {
    try {
      if (rawData["price_clone_tg_bot_regular_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_regular_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_regular_cli {
    try {
      if (rawData["price_clone_tg_bot_regular_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_regular_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_regular_app {
    try {
      if (rawData["price_clone_tg_bot_regular_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_regular_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_premium_cloud {
    try {
      if (rawData["price_clone_tg_bot_premium_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_premium_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_premium_cli {
    try {
      if (rawData["price_clone_tg_bot_premium_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_premium_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_premium_app {
    try {
      if (rawData["price_clone_tg_bot_premium_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_premium_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_ultra_cloud {
    try {
      if (rawData["price_clone_tg_bot_ultra_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_ultra_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_ultra_cli {
    try {
      if (rawData["price_clone_tg_bot_ultra_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_ultra_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_ultra_app {
    try {
      if (rawData["price_clone_tg_bot_ultra_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_ultra_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_lifetime_cloud {
    try {
      if (rawData["price_clone_tg_bot_lifetime_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_lifetime_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_lifetime_cli {
    try {
      if (rawData["price_clone_tg_bot_lifetime_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_lifetime_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_lifetime_app {
    try {
      if (rawData["price_clone_tg_bot_lifetime_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_lifetime_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_daily_cloud {
    try {
      if (rawData["price_clone_tg_bot_daily_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_daily_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_daily_cli {
    try {
      if (rawData["price_clone_tg_bot_daily_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_daily_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_bot_daily_app {
    try {
      if (rawData["price_clone_tg_bot_daily_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_bot_daily_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_regular_cloud {
    try {
      if (rawData["price_clone_tg_userbot_regular_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_regular_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_regular_cli {
    try {
      if (rawData["price_clone_tg_userbot_regular_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_regular_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_regular_app {
    try {
      if (rawData["price_clone_tg_userbot_regular_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_regular_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_premium_cloud {
    try {
      if (rawData["price_clone_tg_userbot_premium_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_premium_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_premium_cli {
    try {
      if (rawData["price_clone_tg_userbot_premium_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_premium_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_premium_app {
    try {
      if (rawData["price_clone_tg_userbot_premium_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_premium_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_ultra_cloud {
    try {
      if (rawData["price_clone_tg_userbot_ultra_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_ultra_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_ultra_cli {
    try {
      if (rawData["price_clone_tg_userbot_ultra_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_ultra_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_ultra_app {
    try {
      if (rawData["price_clone_tg_userbot_ultra_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_ultra_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_lifetime_cloud {
    try {
      if (rawData["price_clone_tg_userbot_lifetime_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_lifetime_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_lifetime_cli {
    try {
      if (rawData["price_clone_tg_userbot_lifetime_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_lifetime_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_lifetime_app {
    try {
      if (rawData["price_clone_tg_userbot_lifetime_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_lifetime_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_daily_cloud {
    try {
      if (rawData["price_clone_tg_userbot_daily_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_daily_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_daily_cli {
    try {
      if (rawData["price_clone_tg_userbot_daily_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_daily_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_tg_userbot_daily_app {
    try {
      if (rawData["price_clone_tg_userbot_daily_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_tg_userbot_daily_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_regular_cloud {
    try {
      if (rawData["price_clone_wa_bot_regular_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_regular_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_regular_cli {
    try {
      if (rawData["price_clone_wa_bot_regular_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_regular_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_regular_app {
    try {
      if (rawData["price_clone_wa_bot_regular_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_regular_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_premium_cloud {
    try {
      if (rawData["price_clone_wa_bot_premium_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_premium_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_premium_cli {
    try {
      if (rawData["price_clone_wa_bot_premium_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_premium_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_premium_app {
    try {
      if (rawData["price_clone_wa_bot_premium_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_premium_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_ultra_cloud {
    try {
      if (rawData["price_clone_wa_bot_ultra_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_ultra_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_ultra_cli {
    try {
      if (rawData["price_clone_wa_bot_ultra_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_ultra_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_ultra_app {
    try {
      if (rawData["price_clone_wa_bot_ultra_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_ultra_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_lifetime_cloud {
    try {
      if (rawData["price_clone_wa_bot_lifetime_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_lifetime_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_lifetime_cli {
    try {
      if (rawData["price_clone_wa_bot_lifetime_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_lifetime_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_lifetime_app {
    try {
      if (rawData["price_clone_wa_bot_lifetime_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_lifetime_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_daily_cloud {
    try {
      if (rawData["price_clone_wa_bot_daily_cloud"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_daily_cloud"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_daily_cli {
    try {
      if (rawData["price_clone_wa_bot_daily_cli"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_daily_cli"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get price_clone_wa_bot_daily_app {
    try {
      if (rawData["price_clone_wa_bot_daily_app"] is int == false) {
        return null;
      }
      return rawData["price_clone_wa_bot_daily_app"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get premium_expired_date {
    try {
      if (rawData["premium_expired_date"] is int == false) {
        return null;
      }
      return rawData["premium_expired_date"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get quota_premium {
    try {
      if (rawData["quota_premium"] is int == false) {
        return null;
      }
      return rawData["quota_premium"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get quota_nonpremium {
    try {
      if (rawData["quota_nonpremium"] is int == false) {
        return null;
      }
      return rawData["quota_nonpremium"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get count_send_msg {
    try {
      if (rawData["count_send_msg"] is int == false) {
        return null;
      }
      return rawData["count_send_msg"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get reset_auto_forward_limit_date {
    try {
      if (rawData["reset_auto_forward_limit_date"] is int == false) {
        return null;
      }
      return rawData["reset_auto_forward_limit_date"] as int;
    } catch (e) {
      return null;
    }
  }

  String? get text_payment {
    try {
      if (rawData["text_payment"] is String == false) {
        return null;
      }
      return rawData["text_payment"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get coin {
    try {
      if (rawData["coin"] is int == false) {
        return null;
      }
      return rawData["coin"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get is_force_subscribe {
    try {
      if (rawData["is_force_subscribe"] is bool == false) {
        return null;
      }
      return rawData["is_force_subscribe"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_secret_data {
    try {
      if (rawData["is_secret_data"] is bool == false) {
        return null;
      }
      return rawData["is_secret_data"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_secret_data_user {
    try {
      if (rawData["is_secret_data_user"] is bool == false) {
        return null;
      }
      return rawData["is_secret_data_user"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<ChatForceSubscribes> get chat_force_subscribes {
    try {
      if (rawData["chat_force_subscribes"] is List == false) {
        return [];
      }
      return (rawData["chat_force_subscribes"] as List)
          .map((e) => ChatForceSubscribes(e as Map))
          .toList()
          .cast<ChatForceSubscribes>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_auto_forward_chat {
    try {
      if (rawData["is_auto_forward_chat"] is bool == false) {
        return null;
      }
      return rawData["is_auto_forward_chat"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<Transaction> get transactions {
    try {
      if (rawData["transactions"] is List == false) {
        return [];
      }
      return (rawData["transactions"] as List)
          .map((e) => Transaction(e as Map))
          .toList()
          .cast<Transaction>();
    } catch (e) {
      return [];
    }
  }

  List<AutoForwards> get auto_forwards {
    try {
      if (rawData["auto_forwards"] is List == false) {
        return [];
      }
      return (rawData["auto_forwards"] as List)
          .map((e) => AutoForwards(e as Map))
          .toList()
          .cast<AutoForwards>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_note_msg {
    try {
      if (rawData["is_note_msg"] is bool == false) {
        return null;
      }
      return rawData["is_note_msg"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<NoteMsgs> get note_msgs {
    try {
      if (rawData["note_msgs"] is List == false) {
        return [];
      }
      return (rawData["note_msgs"] as List)
          .map((e) => NoteMsgs(e as Map))
          .toList()
          .cast<NoteMsgs>();
    } catch (e) {
      return [];
    }
  }

  List<String> get note_msg_chat_types {
    try {
      if (rawData["note_msg_chat_types"] is List == false) {
        return [];
      }
      return (rawData["note_msg_chat_types"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  String? get start_msg_text {
    try {
      if (rawData["start_msg_text"] is String == false) {
        return null;
      }
      return rawData["start_msg_text"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get start_msg_on {
    try {
      if (rawData["start_msg_on"] is bool == false) {
        return null;
      }
      return rawData["start_msg_on"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_welcome {
    try {
      if (rawData["is_welcome"] is bool == false) {
        return null;
      }
      return rawData["is_welcome"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_welcome_keyboard {
    try {
      if (rawData["is_welcome_keyboard"] is bool == false) {
        return null;
      }
      return rawData["is_welcome_keyboard"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_welcome_auto_delete {
    try {
      if (rawData["is_welcome_auto_delete"] is bool == false) {
        return null;
      }
      return rawData["is_welcome_auto_delete"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_start_msg {
    try {
      if (rawData["is_start_msg"] is bool == false) {
        return null;
      }
      return rawData["is_start_msg"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_start_keyboard {
    try {
      if (rawData["is_start_keyboard"] is bool == false) {
        return null;
      }
      return rawData["is_start_keyboard"] as bool;
    } catch (e) {
      return null;
    }
  }

  StartMsg get start_msg {
    try {
      if (rawData["start_msg"] is Map == false) {
        return StartMsg({});
      }
      return StartMsg(rawData["start_msg"] as Map);
    } catch (e) {
      return StartMsg({});
    }
  }

  StartKeyboard get start_keyboard {
    try {
      if (rawData["start_keyboard"] is Map == false) {
        return StartKeyboard({});
      }
      return StartKeyboard(rawData["start_keyboard"] as Map);
    } catch (e) {
      return StartKeyboard({});
    }
  }

  bool? get is_end_keyboard {
    try {
      if (rawData["is_end_keyboard"] is bool == false) {
        return null;
      }
      return rawData["is_end_keyboard"] as bool;
    } catch (e) {
      return null;
    }
  }

  EndKeyboard get end_keyboard {
    try {
      if (rawData["end_keyboard"] is Map == false) {
        return EndKeyboard({});
      }
      return EndKeyboard(rawData["end_keyboard"] as Map);
    } catch (e) {
      return EndKeyboard({});
    }
  }

  WelcomeMsg get welcome_msg {
    try {
      if (rawData["welcome_msg"] is Map == false) {
        return WelcomeMsg({});
      }
      return WelcomeMsg(rawData["welcome_msg"] as Map);
    } catch (e) {
      return WelcomeMsg({});
    }
  }

  WelcomeKeyboard get welcome_keyboard {
    try {
      if (rawData["welcome_keyboard"] is Map == false) {
        return WelcomeKeyboard({});
      }
      return WelcomeKeyboard(rawData["welcome_keyboard"] as Map);
    } catch (e) {
      return WelcomeKeyboard({});
    }
  }

  bool? get is_repeat_msg {
    try {
      if (rawData["is_repeat_msg"] is bool == false) {
        return null;
      }
      return rawData["is_repeat_msg"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get repeat_msg_count {
    try {
      if (rawData["repeat_msg_count"] is int == false) {
        return null;
      }
      return rawData["repeat_msg_count"] as int;
    } catch (e) {
      return null;
    }
  }

  List<String> get repeat_msg_chat_types {
    try {
      if (rawData["repeat_msg_chat_types"] is List == false) {
        return [];
      }
      return (rawData["repeat_msg_chat_types"] as List).cast<String>();
    } catch (e) {
      return [];
    }
  }

  List<RepeatMsgs> get repeat_msgs {
    try {
      if (rawData["repeat_msgs"] is List == false) {
        return [];
      }
      return (rawData["repeat_msgs"] as List)
          .map((e) => RepeatMsgs(e as Map))
          .toList()
          .cast<RepeatMsgs>();
    } catch (e) {
      return [];
    }
  }

  List<RepeatMsgChats> get repeat_msg_chats {
    try {
      if (rawData["repeat_msg_chats"] is List == false) {
        return [];
      }
      return (rawData["repeat_msg_chats"] as List)
          .map((e) => RepeatMsgChats(e as Map))
          .toList()
          .cast<RepeatMsgChats>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_init_msg {
    try {
      if (rawData["is_init_msg"] is bool == false) {
        return null;
      }
      return rawData["is_init_msg"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<InitMsgs> get init_msgs {
    try {
      if (rawData["init_msgs"] is List == false) {
        return [];
      }
      return (rawData["init_msgs"] as List)
          .map((e) => InitMsgs(e as Map))
          .toList()
          .cast<InitMsgs>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_init_msg_user_receive {
    try {
      if (rawData["is_init_msg_user_receive"] is bool == false) {
        return null;
      }
      return rawData["is_init_msg_user_receive"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<Items> get items {
    try {
      if (rawData["items"] is List == false) {
        return [];
      }
      return (rawData["items"] as List)
          .map((e) => Items(e as Map))
          .toList()
          .cast<Items>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_forms {
    try {
      if (rawData["is_forms"] is bool == false) {
        return null;
      }
      return rawData["is_forms"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<Forms> get forms {
    try {
      if (rawData["forms"] is List == false) {
        return [];
      }
      return (rawData["forms"] as List)
          .map((e) => Forms(e as Map))
          .toList()
          .cast<Forms>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_spambot {
    try {
      if (rawData["is_spambot"] is bool == false) {
        return null;
      }
      return rawData["is_spambot"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get spambot_expire_date {
    try {
      if (rawData["spambot_expire_date"] is int == false) {
        return null;
      }
      return rawData["spambot_expire_date"] as int;
    } catch (e) {
      return null;
    }
  }

  bool? get is_task {
    try {
      if (rawData["is_task"] is bool == false) {
        return null;
      }
      return rawData["is_task"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<Method> get tasks {
    try {
      if (rawData["tasks"] is List == false) {
        return [];
      }
      return (rawData["tasks"] as List)
          .map((e) => Method(e as Map))
          .toList()
          .cast<Method>();
    } catch (e) {
      return [];
    }
  }

  bool? get is_refferal {
    try {
      if (rawData["is_refferal"] is bool == false) {
        return null;
      }
      return rawData["is_refferal"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<Ee> get refferals {
    try {
      if (rawData["refferals"] is List == false) {
        return [];
      }
      return (rawData["refferals"] as List)
          .map((e) => Ee(e as Map))
          .toList()
          .cast<Ee>();
    } catch (e) {
      return [];
    }
  }

  SecretDataUser get secret_data {
    try {
      if (rawData["secret_data"] is Map == false) {
        return SecretDataUser({});
      }
      return SecretDataUser(rawData["secret_data"] as Map);
    } catch (e) {
      return SecretDataUser({});
    }
  }

  bool? get is_acces_require {
    try {
      if (rawData["is_acces_require"] is bool == false) {
        return null;
      }
      return rawData["is_acces_require"] as bool;
    } catch (e) {
      return null;
    }
  }

  bool? get is_acces_user_payed {
    try {
      if (rawData["is_acces_user_payed"] is bool == false) {
        return null;
      }
      return rawData["is_acces_user_payed"] as bool;
    } catch (e) {
      return null;
    }
  }

  int? get price_acces {
    try {
      if (rawData["price_acces"] is int == false) {
        return null;
      }
      return rawData["price_acces"] as int;
    } catch (e) {
      return null;
    }
  }

  AccesMsgData get acces_msg {
    try {
      if (rawData["acces_msg"] is Map == false) {
        return AccesMsgData({});
      }
      return AccesMsgData(rawData["acces_msg"] as Map);
    } catch (e) {
      return AccesMsgData({});
    }
  }

  AccesKeyboardData get acces_keyboard {
    try {
      if (rawData["acces_keyboard"] is Map == false) {
        return AccesKeyboardData({});
      }
      return AccesKeyboardData(rawData["acces_keyboard"] as Map);
    } catch (e) {
      return AccesKeyboardData({});
    }
  }

  UserChatData get user {
    try {
      if (rawData["user"] is Map == false) {
        return UserChatData({});
      }
      return UserChatData(rawData["user"] as Map);
    } catch (e) {
      return UserChatData({});
    }
  }

  static ChatDataWa create({
    String special_type = "chatDataWa",
    String? id,
    String? first_name,
    String? name,
    String? title,
    String? type,
    String? username,
    String? last_name,
    bool? is_bot,
    bool? is_auto_read,
    bool? is_auto_clear,
    bool? is_auto_block,
    bool? is_afk,
    bool? is_ai_chatbot,
    bool? is_ai_task,
    bool? is_blocked,
    bool? is_mute,
    int? ads_gateway_price_day,
    int? ads_gateway_price_pinned,
    int? ads_gateway_price_repeat_msg_day,
    String? ads_gateway_blacklist_word,
    bool? is_ads_gateway,
    bool? ads_gateway_is_require_review,
    List<String>? ads_gateway_type_content,
    bool? is_subscribe,
    bool? is_start_msg_log,
    bool? is_restrict_log,
    bool? is_global_blacklist,
    int? subscribe_expire_date,
    int? dynamic_repeat_msg_count,
    bool? is_natural,
    bool? is_core_pm,
    String? language_id,
    String? repeat_msg_mode,
    int? dynamic_core_msg_count,
    List<String>? dynamic_repeat_msg_id,
    LimitDataState? limit_data_state,
    int? free_date,
    int? afk_date,
    List<AfkMsgs>? afk_msgs,
    List<String>? afk_chat_types,
    List<String>? auto_read_chats,
    bool? is_auto_delete,
    int? auto_delete_duration,
    List<String>? auto_delete_chat_types,
    int? join_date,
    bool? can_join_groups,
    bool? can_read_all_group_messages,
    bool? supports_inline_queries,
    String? language_code,
    bool? is_option_protect_content,
    bool? is_translate,
    CheckUser? check_user,
    Media? media,
    MediaMore? media_more,
    ContentMessage? content_message,
    ContentMessageOption? content_message_option,
    ServiceMessage? service_message,
    List<Admins>? admins,
    State? state,
    WalletType? wallet,
    bool? is_wallet_can_top_up_manual,
    WalletMsg? wallet_msg,
    WalletKeyboard? wallet_keyboard,
    List<Chats>? chats,
    int? init_coin,
    int? price_unrestrict_ban,
    int? price_unrestrict_mute,
    int? price_premium,
    int? price_clone_ai_bot_regular_cloud,
    int? price_clone_ai_bot_regular_cli,
    int? price_clone_ai_bot_regular_app,
    int? price_clone_ai_bot_premium_cloud,
    int? price_clone_ai_bot_premium_cli,
    int? price_clone_ai_bot_premium_app,
    int? price_clone_ai_bot_ultra_cloud,
    int? price_clone_ai_bot_ultra_cli,
    int? price_clone_ai_bot_ultra_app,
    int? price_clone_ai_bot_lifetime_cloud,
    int? price_clone_ai_bot_lifetime_cli,
    int? price_clone_ai_bot_lifetime_app,
    int? price_clone_ai_bot_daily_cloud,
    int? price_clone_ai_bot_daily_cli,
    int? price_clone_ai_bot_daily_app,
    int? price_clone_discord_bot_regular_cloud,
    int? price_clone_discord_bot_regular_cli,
    int? price_clone_discord_bot_regular_app,
    int? price_clone_discord_bot_premium_cloud,
    int? price_clone_discord_bot_premium_cli,
    int? price_clone_discord_bot_premium_app,
    int? price_clone_discord_bot_ultra_cloud,
    int? price_clone_discord_bot_ultra_cli,
    int? price_clone_discord_bot_ultra_app,
    int? price_clone_discord_bot_lifetime_cloud,
    int? price_clone_discord_bot_lifetime_cli,
    int? price_clone_discord_bot_lifetime_app,
    int? price_clone_discord_bot_daily_cloud,
    int? price_clone_discord_bot_daily_cli,
    int? price_clone_discord_bot_daily_app,
    int? price_clone_google_bot_regular_cloud,
    int? price_clone_google_bot_regular_cli,
    int? price_clone_google_bot_regular_app,
    int? price_clone_google_bot_premium_cloud,
    int? price_clone_google_bot_premium_cli,
    int? price_clone_google_bot_premium_app,
    int? price_clone_google_bot_ultra_cloud,
    int? price_clone_google_bot_ultra_cli,
    int? price_clone_google_bot_ultra_app,
    int? price_clone_google_bot_lifetime_cloud,
    int? price_clone_google_bot_lifetime_cli,
    int? price_clone_google_bot_lifetime_app,
    int? price_clone_google_bot_daily_cloud,
    int? price_clone_google_bot_daily_cli,
    int? price_clone_google_bot_daily_app,
    int? price_clone_instagram_bot_regular_cloud,
    int? price_clone_instagram_bot_regular_cli,
    int? price_clone_instagram_bot_regular_app,
    int? price_clone_instagram_bot_premium_cloud,
    int? price_clone_instagram_bot_premium_cli,
    int? price_clone_instagram_bot_premium_app,
    int? price_clone_instagram_bot_ultra_cloud,
    int? price_clone_instagram_bot_ultra_cli,
    int? price_clone_instagram_bot_ultra_app,
    int? price_clone_instagram_bot_lifetime_cloud,
    int? price_clone_instagram_bot_lifetime_cli,
    int? price_clone_instagram_bot_lifetime_app,
    int? price_clone_instagram_bot_daily_cloud,
    int? price_clone_instagram_bot_daily_cli,
    int? price_clone_instagram_bot_daily_app,
    int? price_clone_socmed_bot_regular_cloud,
    int? price_clone_socmed_bot_regular_cli,
    int? price_clone_socmed_bot_regular_app,
    int? price_clone_socmed_bot_premium_cloud,
    int? price_clone_socmed_bot_premium_cli,
    int? price_clone_socmed_bot_premium_app,
    int? price_clone_socmed_bot_ultra_cloud,
    int? price_clone_socmed_bot_ultra_cli,
    int? price_clone_socmed_bot_ultra_app,
    int? price_clone_socmed_bot_lifetime_cloud,
    int? price_clone_socmed_bot_lifetime_cli,
    int? price_clone_socmed_bot_lifetime_app,
    int? price_clone_socmed_bot_daily_cloud,
    int? price_clone_socmed_bot_daily_cli,
    int? price_clone_socmed_bot_daily_app,
    int? price_clone_system_bot_regular_cloud,
    int? price_clone_system_bot_regular_cli,
    int? price_clone_system_bot_regular_app,
    int? price_clone_system_bot_premium_cloud,
    int? price_clone_system_bot_premium_cli,
    int? price_clone_system_bot_premium_app,
    int? price_clone_system_bot_ultra_cloud,
    int? price_clone_system_bot_ultra_cli,
    int? price_clone_system_bot_ultra_app,
    int? price_clone_system_bot_lifetime_cloud,
    int? price_clone_system_bot_lifetime_cli,
    int? price_clone_system_bot_lifetime_app,
    int? price_clone_system_bot_daily_cloud,
    int? price_clone_system_bot_daily_cli,
    int? price_clone_system_bot_daily_app,
    int? price_clone_tg_bot_regular_cloud,
    int? price_clone_tg_bot_regular_cli,
    int? price_clone_tg_bot_regular_app,
    int? price_clone_tg_bot_premium_cloud,
    int? price_clone_tg_bot_premium_cli,
    int? price_clone_tg_bot_premium_app,
    int? price_clone_tg_bot_ultra_cloud,
    int? price_clone_tg_bot_ultra_cli,
    int? price_clone_tg_bot_ultra_app,
    int? price_clone_tg_bot_lifetime_cloud,
    int? price_clone_tg_bot_lifetime_cli,
    int? price_clone_tg_bot_lifetime_app,
    int? price_clone_tg_bot_daily_cloud,
    int? price_clone_tg_bot_daily_cli,
    int? price_clone_tg_bot_daily_app,
    int? price_clone_tg_userbot_regular_cloud,
    int? price_clone_tg_userbot_regular_cli,
    int? price_clone_tg_userbot_regular_app,
    int? price_clone_tg_userbot_premium_cloud,
    int? price_clone_tg_userbot_premium_cli,
    int? price_clone_tg_userbot_premium_app,
    int? price_clone_tg_userbot_ultra_cloud,
    int? price_clone_tg_userbot_ultra_cli,
    int? price_clone_tg_userbot_ultra_app,
    int? price_clone_tg_userbot_lifetime_cloud,
    int? price_clone_tg_userbot_lifetime_cli,
    int? price_clone_tg_userbot_lifetime_app,
    int? price_clone_tg_userbot_daily_cloud,
    int? price_clone_tg_userbot_daily_cli,
    int? price_clone_tg_userbot_daily_app,
    int? price_clone_wa_bot_regular_cloud,
    int? price_clone_wa_bot_regular_cli,
    int? price_clone_wa_bot_regular_app,
    int? price_clone_wa_bot_premium_cloud,
    int? price_clone_wa_bot_premium_cli,
    int? price_clone_wa_bot_premium_app,
    int? price_clone_wa_bot_ultra_cloud,
    int? price_clone_wa_bot_ultra_cli,
    int? price_clone_wa_bot_ultra_app,
    int? price_clone_wa_bot_lifetime_cloud,
    int? price_clone_wa_bot_lifetime_cli,
    int? price_clone_wa_bot_lifetime_app,
    int? price_clone_wa_bot_daily_cloud,
    int? price_clone_wa_bot_daily_cli,
    int? price_clone_wa_bot_daily_app,
    int? premium_expired_date,
    int? quota_premium,
    int? quota_nonpremium,
    int? count_send_msg,
    int? reset_auto_forward_limit_date,
    String? text_payment,
    int? coin,
    bool? is_force_subscribe,
    bool? is_secret_data,
    bool? is_secret_data_user,
    List<ChatForceSubscribes>? chat_force_subscribes,
    bool? is_auto_forward_chat,
    List<Transaction>? transactions,
    List<AutoForwards>? auto_forwards,
    bool? is_note_msg,
    List<NoteMsgs>? note_msgs,
    List<String>? note_msg_chat_types,
    String? start_msg_text,
    bool? start_msg_on,
    bool? is_welcome,
    bool? is_welcome_keyboard,
    bool? is_welcome_auto_delete,
    bool? is_start_msg,
    bool? is_start_keyboard,
    StartMsg? start_msg,
    StartKeyboard? start_keyboard,
    bool? is_end_keyboard,
    EndKeyboard? end_keyboard,
    WelcomeMsg? welcome_msg,
    WelcomeKeyboard? welcome_keyboard,
    bool? is_repeat_msg,
    int? repeat_msg_count,
    List<String>? repeat_msg_chat_types,
    List<RepeatMsgs>? repeat_msgs,
    List<RepeatMsgChats>? repeat_msg_chats,
    bool? is_init_msg,
    List<InitMsgs>? init_msgs,
    bool? is_init_msg_user_receive,
    List<Items>? items,
    bool? is_forms,
    List<Forms>? forms,
    bool? is_spambot,
    int? spambot_expire_date,
    bool? is_task,
    List<Method>? tasks,
    bool? is_refferal,
    List<Ee>? refferals,
    SecretDataUser? secret_data,
    bool? is_acces_require,
    bool? is_acces_user_payed,
    int? price_acces,
    AccesMsgData? acces_msg,
    AccesKeyboardData? acces_keyboard,
    UserChatData? user,
  }) {
    // ChatDataWa chatDataWa = ChatDataWa({
    Map chatDataWa_data_create_json = {
      "@type": special_type,
      "id": id,
      "first_name": first_name,
      "name": name,
      "title": title,
      "type": type,
      "username": username,
      "last_name": last_name,
      "is_bot": is_bot,
      "is_auto_read": is_auto_read,
      "is_auto_clear": is_auto_clear,
      "is_auto_block": is_auto_block,
      "is_afk": is_afk,
      "is_ai_chatbot": is_ai_chatbot,
      "is_ai_task": is_ai_task,
      "is_blocked": is_blocked,
      "is_mute": is_mute,
      "ads_gateway_price_day": ads_gateway_price_day,
      "ads_gateway_price_pinned": ads_gateway_price_pinned,
      "ads_gateway_price_repeat_msg_day": ads_gateway_price_repeat_msg_day,
      "ads_gateway_blacklist_word": ads_gateway_blacklist_word,
      "is_ads_gateway": is_ads_gateway,
      "ads_gateway_is_require_review": ads_gateway_is_require_review,
      "ads_gateway_type_content": ads_gateway_type_content,
      "is_subscribe": is_subscribe,
      "is_start_msg_log": is_start_msg_log,
      "is_restrict_log": is_restrict_log,
      "is_global_blacklist": is_global_blacklist,
      "subscribe_expire_date": subscribe_expire_date,
      "dynamic_repeat_msg_count": dynamic_repeat_msg_count,
      "is_natural": is_natural,
      "is_core_pm": is_core_pm,
      "language_id": language_id,
      "repeat_msg_mode": repeat_msg_mode,
      "dynamic_core_msg_count": dynamic_core_msg_count,
      "dynamic_repeat_msg_id": dynamic_repeat_msg_id,
      "limit_data_state":
          (limit_data_state != null) ? limit_data_state.toJson() : null,
      "free_date": free_date,
      "afk_date": afk_date,
      "afk_msgs": (afk_msgs != null) ? afk_msgs.toJson() : null,
      "afk_chat_types": afk_chat_types,
      "auto_read_chats": auto_read_chats,
      "is_auto_delete": is_auto_delete,
      "auto_delete_duration": auto_delete_duration,
      "auto_delete_chat_types": auto_delete_chat_types,
      "join_date": join_date,
      "can_join_groups": can_join_groups,
      "can_read_all_group_messages": can_read_all_group_messages,
      "supports_inline_queries": supports_inline_queries,
      "language_code": language_code,
      "is_option_protect_content": is_option_protect_content,
      "is_translate": is_translate,
      "check_user": (check_user != null) ? check_user.toJson() : null,
      "media": (media != null) ? media.toJson() : null,
      "media_more": (media_more != null) ? media_more.toJson() : null,
      "content_message":
          (content_message != null) ? content_message.toJson() : null,
      "content_message_option": (content_message_option != null)
          ? content_message_option.toJson()
          : null,
      "service_message":
          (service_message != null) ? service_message.toJson() : null,
      "admins": (admins != null) ? admins.toJson() : null,
      "state": (state != null) ? state.toJson() : null,
      "wallet": (wallet != null) ? wallet.toJson() : null,
      "is_wallet_can_top_up_manual": is_wallet_can_top_up_manual,
      "wallet_msg": (wallet_msg != null) ? wallet_msg.toJson() : null,
      "wallet_keyboard":
          (wallet_keyboard != null) ? wallet_keyboard.toJson() : null,
      "chats": (chats != null) ? chats.toJson() : null,
      "init_coin": init_coin,
      "price_unrestrict_ban": price_unrestrict_ban,
      "price_unrestrict_mute": price_unrestrict_mute,
      "price_premium": price_premium,
      "price_clone_ai_bot_regular_cloud": price_clone_ai_bot_regular_cloud,
      "price_clone_ai_bot_regular_cli": price_clone_ai_bot_regular_cli,
      "price_clone_ai_bot_regular_app": price_clone_ai_bot_regular_app,
      "price_clone_ai_bot_premium_cloud": price_clone_ai_bot_premium_cloud,
      "price_clone_ai_bot_premium_cli": price_clone_ai_bot_premium_cli,
      "price_clone_ai_bot_premium_app": price_clone_ai_bot_premium_app,
      "price_clone_ai_bot_ultra_cloud": price_clone_ai_bot_ultra_cloud,
      "price_clone_ai_bot_ultra_cli": price_clone_ai_bot_ultra_cli,
      "price_clone_ai_bot_ultra_app": price_clone_ai_bot_ultra_app,
      "price_clone_ai_bot_lifetime_cloud": price_clone_ai_bot_lifetime_cloud,
      "price_clone_ai_bot_lifetime_cli": price_clone_ai_bot_lifetime_cli,
      "price_clone_ai_bot_lifetime_app": price_clone_ai_bot_lifetime_app,
      "price_clone_ai_bot_daily_cloud": price_clone_ai_bot_daily_cloud,
      "price_clone_ai_bot_daily_cli": price_clone_ai_bot_daily_cli,
      "price_clone_ai_bot_daily_app": price_clone_ai_bot_daily_app,
      "price_clone_discord_bot_regular_cloud":
          price_clone_discord_bot_regular_cloud,
      "price_clone_discord_bot_regular_cli":
          price_clone_discord_bot_regular_cli,
      "price_clone_discord_bot_regular_app":
          price_clone_discord_bot_regular_app,
      "price_clone_discord_bot_premium_cloud":
          price_clone_discord_bot_premium_cloud,
      "price_clone_discord_bot_premium_cli":
          price_clone_discord_bot_premium_cli,
      "price_clone_discord_bot_premium_app":
          price_clone_discord_bot_premium_app,
      "price_clone_discord_bot_ultra_cloud":
          price_clone_discord_bot_ultra_cloud,
      "price_clone_discord_bot_ultra_cli": price_clone_discord_bot_ultra_cli,
      "price_clone_discord_bot_ultra_app": price_clone_discord_bot_ultra_app,
      "price_clone_discord_bot_lifetime_cloud":
          price_clone_discord_bot_lifetime_cloud,
      "price_clone_discord_bot_lifetime_cli":
          price_clone_discord_bot_lifetime_cli,
      "price_clone_discord_bot_lifetime_app":
          price_clone_discord_bot_lifetime_app,
      "price_clone_discord_bot_daily_cloud":
          price_clone_discord_bot_daily_cloud,
      "price_clone_discord_bot_daily_cli": price_clone_discord_bot_daily_cli,
      "price_clone_discord_bot_daily_app": price_clone_discord_bot_daily_app,
      "price_clone_google_bot_regular_cloud":
          price_clone_google_bot_regular_cloud,
      "price_clone_google_bot_regular_cli": price_clone_google_bot_regular_cli,
      "price_clone_google_bot_regular_app": price_clone_google_bot_regular_app,
      "price_clone_google_bot_premium_cloud":
          price_clone_google_bot_premium_cloud,
      "price_clone_google_bot_premium_cli": price_clone_google_bot_premium_cli,
      "price_clone_google_bot_premium_app": price_clone_google_bot_premium_app,
      "price_clone_google_bot_ultra_cloud": price_clone_google_bot_ultra_cloud,
      "price_clone_google_bot_ultra_cli": price_clone_google_bot_ultra_cli,
      "price_clone_google_bot_ultra_app": price_clone_google_bot_ultra_app,
      "price_clone_google_bot_lifetime_cloud":
          price_clone_google_bot_lifetime_cloud,
      "price_clone_google_bot_lifetime_cli":
          price_clone_google_bot_lifetime_cli,
      "price_clone_google_bot_lifetime_app":
          price_clone_google_bot_lifetime_app,
      "price_clone_google_bot_daily_cloud": price_clone_google_bot_daily_cloud,
      "price_clone_google_bot_daily_cli": price_clone_google_bot_daily_cli,
      "price_clone_google_bot_daily_app": price_clone_google_bot_daily_app,
      "price_clone_instagram_bot_regular_cloud":
          price_clone_instagram_bot_regular_cloud,
      "price_clone_instagram_bot_regular_cli":
          price_clone_instagram_bot_regular_cli,
      "price_clone_instagram_bot_regular_app":
          price_clone_instagram_bot_regular_app,
      "price_clone_instagram_bot_premium_cloud":
          price_clone_instagram_bot_premium_cloud,
      "price_clone_instagram_bot_premium_cli":
          price_clone_instagram_bot_premium_cli,
      "price_clone_instagram_bot_premium_app":
          price_clone_instagram_bot_premium_app,
      "price_clone_instagram_bot_ultra_cloud":
          price_clone_instagram_bot_ultra_cloud,
      "price_clone_instagram_bot_ultra_cli":
          price_clone_instagram_bot_ultra_cli,
      "price_clone_instagram_bot_ultra_app":
          price_clone_instagram_bot_ultra_app,
      "price_clone_instagram_bot_lifetime_cloud":
          price_clone_instagram_bot_lifetime_cloud,
      "price_clone_instagram_bot_lifetime_cli":
          price_clone_instagram_bot_lifetime_cli,
      "price_clone_instagram_bot_lifetime_app":
          price_clone_instagram_bot_lifetime_app,
      "price_clone_instagram_bot_daily_cloud":
          price_clone_instagram_bot_daily_cloud,
      "price_clone_instagram_bot_daily_cli":
          price_clone_instagram_bot_daily_cli,
      "price_clone_instagram_bot_daily_app":
          price_clone_instagram_bot_daily_app,
      "price_clone_socmed_bot_regular_cloud":
          price_clone_socmed_bot_regular_cloud,
      "price_clone_socmed_bot_regular_cli": price_clone_socmed_bot_regular_cli,
      "price_clone_socmed_bot_regular_app": price_clone_socmed_bot_regular_app,
      "price_clone_socmed_bot_premium_cloud":
          price_clone_socmed_bot_premium_cloud,
      "price_clone_socmed_bot_premium_cli": price_clone_socmed_bot_premium_cli,
      "price_clone_socmed_bot_premium_app": price_clone_socmed_bot_premium_app,
      "price_clone_socmed_bot_ultra_cloud": price_clone_socmed_bot_ultra_cloud,
      "price_clone_socmed_bot_ultra_cli": price_clone_socmed_bot_ultra_cli,
      "price_clone_socmed_bot_ultra_app": price_clone_socmed_bot_ultra_app,
      "price_clone_socmed_bot_lifetime_cloud":
          price_clone_socmed_bot_lifetime_cloud,
      "price_clone_socmed_bot_lifetime_cli":
          price_clone_socmed_bot_lifetime_cli,
      "price_clone_socmed_bot_lifetime_app":
          price_clone_socmed_bot_lifetime_app,
      "price_clone_socmed_bot_daily_cloud": price_clone_socmed_bot_daily_cloud,
      "price_clone_socmed_bot_daily_cli": price_clone_socmed_bot_daily_cli,
      "price_clone_socmed_bot_daily_app": price_clone_socmed_bot_daily_app,
      "price_clone_system_bot_regular_cloud":
          price_clone_system_bot_regular_cloud,
      "price_clone_system_bot_regular_cli": price_clone_system_bot_regular_cli,
      "price_clone_system_bot_regular_app": price_clone_system_bot_regular_app,
      "price_clone_system_bot_premium_cloud":
          price_clone_system_bot_premium_cloud,
      "price_clone_system_bot_premium_cli": price_clone_system_bot_premium_cli,
      "price_clone_system_bot_premium_app": price_clone_system_bot_premium_app,
      "price_clone_system_bot_ultra_cloud": price_clone_system_bot_ultra_cloud,
      "price_clone_system_bot_ultra_cli": price_clone_system_bot_ultra_cli,
      "price_clone_system_bot_ultra_app": price_clone_system_bot_ultra_app,
      "price_clone_system_bot_lifetime_cloud":
          price_clone_system_bot_lifetime_cloud,
      "price_clone_system_bot_lifetime_cli":
          price_clone_system_bot_lifetime_cli,
      "price_clone_system_bot_lifetime_app":
          price_clone_system_bot_lifetime_app,
      "price_clone_system_bot_daily_cloud": price_clone_system_bot_daily_cloud,
      "price_clone_system_bot_daily_cli": price_clone_system_bot_daily_cli,
      "price_clone_system_bot_daily_app": price_clone_system_bot_daily_app,
      "price_clone_tg_bot_regular_cloud": price_clone_tg_bot_regular_cloud,
      "price_clone_tg_bot_regular_cli": price_clone_tg_bot_regular_cli,
      "price_clone_tg_bot_regular_app": price_clone_tg_bot_regular_app,
      "price_clone_tg_bot_premium_cloud": price_clone_tg_bot_premium_cloud,
      "price_clone_tg_bot_premium_cli": price_clone_tg_bot_premium_cli,
      "price_clone_tg_bot_premium_app": price_clone_tg_bot_premium_app,
      "price_clone_tg_bot_ultra_cloud": price_clone_tg_bot_ultra_cloud,
      "price_clone_tg_bot_ultra_cli": price_clone_tg_bot_ultra_cli,
      "price_clone_tg_bot_ultra_app": price_clone_tg_bot_ultra_app,
      "price_clone_tg_bot_lifetime_cloud": price_clone_tg_bot_lifetime_cloud,
      "price_clone_tg_bot_lifetime_cli": price_clone_tg_bot_lifetime_cli,
      "price_clone_tg_bot_lifetime_app": price_clone_tg_bot_lifetime_app,
      "price_clone_tg_bot_daily_cloud": price_clone_tg_bot_daily_cloud,
      "price_clone_tg_bot_daily_cli": price_clone_tg_bot_daily_cli,
      "price_clone_tg_bot_daily_app": price_clone_tg_bot_daily_app,
      "price_clone_tg_userbot_regular_cloud":
          price_clone_tg_userbot_regular_cloud,
      "price_clone_tg_userbot_regular_cli": price_clone_tg_userbot_regular_cli,
      "price_clone_tg_userbot_regular_app": price_clone_tg_userbot_regular_app,
      "price_clone_tg_userbot_premium_cloud":
          price_clone_tg_userbot_premium_cloud,
      "price_clone_tg_userbot_premium_cli": price_clone_tg_userbot_premium_cli,
      "price_clone_tg_userbot_premium_app": price_clone_tg_userbot_premium_app,
      "price_clone_tg_userbot_ultra_cloud": price_clone_tg_userbot_ultra_cloud,
      "price_clone_tg_userbot_ultra_cli": price_clone_tg_userbot_ultra_cli,
      "price_clone_tg_userbot_ultra_app": price_clone_tg_userbot_ultra_app,
      "price_clone_tg_userbot_lifetime_cloud":
          price_clone_tg_userbot_lifetime_cloud,
      "price_clone_tg_userbot_lifetime_cli":
          price_clone_tg_userbot_lifetime_cli,
      "price_clone_tg_userbot_lifetime_app":
          price_clone_tg_userbot_lifetime_app,
      "price_clone_tg_userbot_daily_cloud": price_clone_tg_userbot_daily_cloud,
      "price_clone_tg_userbot_daily_cli": price_clone_tg_userbot_daily_cli,
      "price_clone_tg_userbot_daily_app": price_clone_tg_userbot_daily_app,
      "price_clone_wa_bot_regular_cloud": price_clone_wa_bot_regular_cloud,
      "price_clone_wa_bot_regular_cli": price_clone_wa_bot_regular_cli,
      "price_clone_wa_bot_regular_app": price_clone_wa_bot_regular_app,
      "price_clone_wa_bot_premium_cloud": price_clone_wa_bot_premium_cloud,
      "price_clone_wa_bot_premium_cli": price_clone_wa_bot_premium_cli,
      "price_clone_wa_bot_premium_app": price_clone_wa_bot_premium_app,
      "price_clone_wa_bot_ultra_cloud": price_clone_wa_bot_ultra_cloud,
      "price_clone_wa_bot_ultra_cli": price_clone_wa_bot_ultra_cli,
      "price_clone_wa_bot_ultra_app": price_clone_wa_bot_ultra_app,
      "price_clone_wa_bot_lifetime_cloud": price_clone_wa_bot_lifetime_cloud,
      "price_clone_wa_bot_lifetime_cli": price_clone_wa_bot_lifetime_cli,
      "price_clone_wa_bot_lifetime_app": price_clone_wa_bot_lifetime_app,
      "price_clone_wa_bot_daily_cloud": price_clone_wa_bot_daily_cloud,
      "price_clone_wa_bot_daily_cli": price_clone_wa_bot_daily_cli,
      "price_clone_wa_bot_daily_app": price_clone_wa_bot_daily_app,
      "premium_expired_date": premium_expired_date,
      "quota_premium": quota_premium,
      "quota_nonpremium": quota_nonpremium,
      "count_send_msg": count_send_msg,
      "reset_auto_forward_limit_date": reset_auto_forward_limit_date,
      "text_payment": text_payment,
      "coin": coin,
      "is_force_subscribe": is_force_subscribe,
      "is_secret_data": is_secret_data,
      "is_secret_data_user": is_secret_data_user,
      "chat_force_subscribes": (chat_force_subscribes != null)
          ? chat_force_subscribes.toJson()
          : null,
      "is_auto_forward_chat": is_auto_forward_chat,
      "transactions": (transactions != null) ? transactions.toJson() : null,
      "auto_forwards": (auto_forwards != null) ? auto_forwards.toJson() : null,
      "is_note_msg": is_note_msg,
      "note_msgs": (note_msgs != null) ? note_msgs.toJson() : null,
      "note_msg_chat_types": note_msg_chat_types,
      "start_msg_text": start_msg_text,
      "start_msg_on": start_msg_on,
      "is_welcome": is_welcome,
      "is_welcome_keyboard": is_welcome_keyboard,
      "is_welcome_auto_delete": is_welcome_auto_delete,
      "is_start_msg": is_start_msg,
      "is_start_keyboard": is_start_keyboard,
      "start_msg": (start_msg != null) ? start_msg.toJson() : null,
      "start_keyboard":
          (start_keyboard != null) ? start_keyboard.toJson() : null,
      "is_end_keyboard": is_end_keyboard,
      "end_keyboard": (end_keyboard != null) ? end_keyboard.toJson() : null,
      "welcome_msg": (welcome_msg != null) ? welcome_msg.toJson() : null,
      "welcome_keyboard":
          (welcome_keyboard != null) ? welcome_keyboard.toJson() : null,
      "is_repeat_msg": is_repeat_msg,
      "repeat_msg_count": repeat_msg_count,
      "repeat_msg_chat_types": repeat_msg_chat_types,
      "repeat_msgs": (repeat_msgs != null) ? repeat_msgs.toJson() : null,
      "repeat_msg_chats":
          (repeat_msg_chats != null) ? repeat_msg_chats.toJson() : null,
      "is_init_msg": is_init_msg,
      "init_msgs": (init_msgs != null) ? init_msgs.toJson() : null,
      "is_init_msg_user_receive": is_init_msg_user_receive,
      "items": (items != null) ? items.toJson() : null,
      "is_forms": is_forms,
      "forms": (forms != null) ? forms.toJson() : null,
      "is_spambot": is_spambot,
      "spambot_expire_date": spambot_expire_date,
      "is_task": is_task,
      "tasks": (tasks != null) ? tasks.toJson() : null,
      "is_refferal": is_refferal,
      "refferals": (refferals != null) ? refferals.toJson() : null,
      "secret_data": (secret_data != null) ? secret_data.toJson() : null,
      "is_acces_require": is_acces_require,
      "is_acces_user_payed": is_acces_user_payed,
      "price_acces": price_acces,
      "acces_msg": (acces_msg != null) ? acces_msg.toJson() : null,
      "acces_keyboard":
          (acces_keyboard != null) ? acces_keyboard.toJson() : null,
      "user": (user != null) ? user.toJson() : null,
    };

    chatDataWa_data_create_json.removeWhere((key, value) => value == null);
    ChatDataWa chatDataWa_data_create = ChatDataWa(chatDataWa_data_create_json);

    return chatDataWa_data_create;
  }
}
