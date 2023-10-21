// ignore_for_file: non_constant_identifier_names, empty_catches

// import 'package:telegram_bot/secret_data.dart';
import 'package:general_lib/general_lib.dart';
import 'package:xendit/scheme/scheme.dart';
import 'package:xendit/xendit.dart';
import "scheme/scheme.dart" as payment_scheme;

enum PaymentTgType {
  xendit,
  coinlox,
}

enum PaymentTgProductionType {
  live,
  sandbox,
}

class PaymentTgId {
  String ownerXenditId;
  Xendit xendit;
  PaymentTgId({
    required this.ownerXenditId,
    required this.xendit,
  });
}

class PaymentTg {
  late PaymentTgType payment_tg_type;
  late PaymentTgId payment_id;
  late PaymentTgProductionType payment_tg_production_type;
  PaymentTg({
    required PaymentTgType paymentTgType,
    required PaymentTgId paymentTgId,
    PaymentTgProductionType paymentTgProductionType =
        PaymentTgProductionType.live,
  }) {
    payment_tg_type = paymentTgType;
    payment_id = paymentTgId;
    payment_tg_production_type = paymentTgProductionType;
  }

  Map getWalletId({
    String? walletId,
    bool isOwned = true,
  }) {
    walletId ??= payment_id.ownerXenditId;
    if (isOwned) {
      return {
        "@type": "walletId",
        "wallet_id": "",
      };
    } else {
      if (walletId.isEmpty) {
        return {
          "@type": "error",
          "message": "wallet_id_must_be_not_empty",
        };
      }
      return {
        "@type": "walletId",
        "wallet_id": walletId,
      };
    }
  }

  Future<payment_scheme.Balance> getBalance({
    String? walletId,
    bool isOwned = true,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    Map get_wallet_id = getWalletId(walletId: walletId, isOwned: isOwned);
    if (get_wallet_id["@type"] == "error") {
      return payment_scheme.Balance(get_wallet_id);
    }
    String wallet_id = get_wallet_id["wallet_id"];
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        Map balance = {
          "cash": 0,
          "holding": 0,
          "tax": 0,
        };
        List<String> account_types = [
          "CASH",
          "HOLDING",
          "TAX",
        ];

        for (var i = 0; i < account_types.length; i++) {
          String account_type = account_types[i];
          try {
            var res = await payment_id.xendit.getBalance(
              forUserId: wallet_id,
              account_type: account_type,
            );
            if (res.balance != null) {
              balance[account_type.toLowerCase()] = res.balance;
            }
          } catch (e) {
            print(e);
            if (e is XenditError) {
              e.toJson().printPretty(2);
            }
          }
        }
        return payment_scheme.Balance({
          "@type": "walletBalance",
          ...balance,
        });
      }
    } catch (e) {
      if (e is XenditError) {
        return payment_scheme.Balance(e.toJson());
      }
      return payment_scheme.Balance({"@type": "error", "message": "crash"});
    }
    return payment_scheme.Balance(
        {"@type": "error", "message": "payment_type_not_found"});
  }

  Future<payment_scheme.Account> createWalletAccount({
    required String email,
    required String title,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        Account walletAccount = await paymentTgId.xendit.createAccount(
          email: email,
          type: "OWNED",
          bussiness_name: title,
        );
        payment_scheme.Balance balance = await getBalance(
          walletId: walletAccount.id!,
          paymentTgType: paymentTgType,
          paymentTgId: paymentTgId,
          paymentTgProductionType: paymentTgProductionType,
        );
        if (balance["@type"] == "error") {
          return payment_scheme.Account(balance.toJson());
        }

        return payment_scheme.Account({
          "@type": "wallet",
          "id": walletAccount.id,
          "title": walletAccount.public_profile.business_name,
          "email": walletAccount.email,
          "balance": balance.toJson(),
        });
      }
    } catch (e) {
      if (e is XenditError) {
        return payment_scheme.Account(e.toJson());
      }

      return payment_scheme.Account({"@type": "error", "message": "crash"});
    }

    return payment_scheme.Account(
        {"@type": "error", "message": "payment_type_not_found"});
  }

  Future<payment_scheme.Transaction> transferWalletBalance({
    required String reference,
    required int amount,
    required String from_user_id,
    required String to_user_id,
    bool isFromOwned = false,
    bool isToOwned = false,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    var get_from_wallet_id =
        getWalletId(walletId: from_user_id, isOwned: isFromOwned);
    if (get_from_wallet_id["@type"] == "error") {
      return payment_scheme.Transaction(get_from_wallet_id);
    }
    var get_to_wallet_id =
        getWalletId(walletId: to_user_id, isOwned: isToOwned);
    if (get_to_wallet_id["@type"] == "error") {
      return payment_scheme.Transaction(get_to_wallet_id);
    }
    String from_wallet_id = get_from_wallet_id["wallet_id"];
    String to_wallet_id = get_to_wallet_id["wallet_id"];
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        payment_scheme.Account fromAccountJson = await getWalletAccountbyId(
          walletId: from_user_id,
          paymentTgType: paymentTgType,
          paymentTgId: paymentTgId,
          paymentTgProductionType: paymentTgProductionType,
          isOwned: isFromOwned,
        );
        if (fromAccountJson["@type"] == "error") {
          return payment_scheme.Transaction(fromAccountJson.toJson());
        }
        payment_scheme.Account toAccountJson = await getWalletAccountbyId(
            walletId: to_wallet_id,
            paymentTgType: paymentTgType,
            paymentTgId: paymentTgId,
            paymentTgProductionType: paymentTgProductionType,
            isOwned: isToOwned);
        if (toAccountJson["@type"] == "error") {
          return payment_scheme.Transaction(toAccountJson.toJson());
        }

        TransferBalanceAccount transferResponse =
            await paymentTgId.xendit.transferBalanceAccount(
          reference: reference,
          amount: amount,
          source_user_id: from_wallet_id,
          destination_user_id: to_wallet_id,
        );
        return payment_scheme.Transaction({
          "@type": "transaction",
          "id": transferResponse.transfer_id,
          "from": fromAccountJson.toJson(),
          "to": toAccountJson.toJson(),
          "amount": transferResponse.amount,
          "status": transferResponse.status,
          "reference": transferResponse.reference,
        });
      }
    } catch (e) {
      if (e is XenditError) {
        return payment_scheme.Transaction(e.toJson());
      }
      return payment_scheme.Transaction({"@type": "error", "message": "crash"});
    }
    return payment_scheme.Transaction(
        {"@type": "error", "message": "payment_type_not_found"});
  }

  Future<payment_scheme.Account> getWalletAccountbyId({
    String? walletId,
    bool isOwned = true,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    var get_wallet_id = getWalletId(walletId: walletId, isOwned: isOwned);
    if (get_wallet_id["@type"] == "error") {
      return payment_scheme.Account(get_wallet_id);
    }
    String wallet_id = get_wallet_id["wallet_id"];
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        if (isOwned) {
          payment_scheme.Balance balance = await getBalance(
            walletId: wallet_id,
            paymentTgType: paymentTgType,
            paymentTgId: paymentTgId,
            paymentTgProductionType: paymentTgProductionType,
            isOwned: isOwned,
          );
          if (balance["@type"] == "error") {
            return payment_scheme.Account(balance.toJson());
          }
          return payment_scheme.Account({
            "@type": "wallet",
            "id": "owner_id",
            "title": "owner_id",
            "email": "owner@gmail.com",
            "balance": balance.toJson(),
          });
        }
        Account walletAccount =
            await paymentTgId.xendit.getAccount(id: wallet_id);
        payment_scheme.Balance balance = await getBalance(
          walletId: wallet_id,
          paymentTgType: paymentTgType,
          paymentTgId: paymentTgId,
          paymentTgProductionType: paymentTgProductionType,
          isOwned: isOwned,
        );
        if (balance["@type"] == "error") {
          return payment_scheme.Account(balance.toJson());
        }

        return payment_scheme.Account({
          "@type": "wallet",
          "id": walletAccount.id,
          "title": walletAccount.public_profile.business_name,
          "email": walletAccount.email,
          "balance": balance.toJson(),
        });
      }
    } catch (e) {
      if (e is XenditError) {
        return payment_scheme.Account(e.toJson());
      }
      return payment_scheme.Account({
        "@type": "error",
        "message": "crash",
      });
    }
    return payment_scheme.Account({
      "@type": "error",
      "message": "payment_type_not_found",
    });
  }

  Future<payment_scheme.Invoice> createInvoice({
    String? walletId,
    String withFeeRule = "",
    required String external_id,
    required int amount,
    int? duration,
    String? description,
    String? email,
    PaymentCustomer? customer,
    String? success_redirect_url,
    String? failure_redirect_url,
    List<Map>? items,
    bool isOwned = true,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    var get_wallet_id = getWalletId(
      walletId: walletId,
      isOwned: isOwned,
    );
    if (get_wallet_id["@type"] == "error") {
      return payment_scheme.Invoice(get_wallet_id);
    }
    String wallet_id = get_wallet_id["wallet_id"];
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        CreateInvoice res = await paymentTgId.xendit.createInvoice(
          forUserId: wallet_id,
          withFeeRule: withFeeRule,
          external_id: external_id,
          amount: amount,
          payer_email: email,
          description: description,
          invoice_duration: duration,
          success_redirect_url: success_redirect_url,
          failure_redirect_url: failure_redirect_url,
          customer: (customer != null) ? customer.toJson() : null,
          items: (items != null) ? items : null,
        );

        return payment_scheme.Invoice({
          "@type": "invoice",
          "id": res.id,
          "status": res.status!.toLowerCase(),
          "external_id": res.external_id,
          "amount": res.amount,
          "title": res.merchant_name,
          "profile_picture": {
            "@type": "profilePictureUrl",
            "url": res.merchant_profile_picture_url,
          },
          "url": res.invoice_url
        });
      }
    } catch (e) {
      if (e is XenditError) {
        return payment_scheme.Invoice(e.toJson());
      }

      return payment_scheme.Invoice({"@type": "error", "message": "crash"});
    }

    return payment_scheme.Invoice(
        {"@type": "error", "message": "payment_type_not_found"});
  }

  Future<payment_scheme.Invoice> getInvoiceByExternalId({
    String? walletId,
    required String externalId,
    bool isOwned = true,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    var get_wallet_id = getWalletId(walletId: walletId, isOwned: isOwned);
    if (get_wallet_id["@type"] == "error") {
      return payment_scheme.Invoice(get_wallet_id);
    }
    String wallet_id = get_wallet_id["wallet_id"];
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        GetInvoice res = await paymentTgId.xendit.getInvoiceByExternalId(
            forUserId: wallet_id, external_id: externalId);

        return payment_scheme.Invoice({
          "@type": "invoice",
          "id": res.id,
          "status": res.status!.toLowerCase(),
          "external_id": res.external_id,
          "amount": res.amount,
          "title": res.merchant_name,
          "profile_picture": {
            "@type": "profilePictureUrl",
            "url": res.merchant_profile_picture_url,
          },
          "url": res.invoice_url
        });
      }
    } catch (e) {
      if (e is XenditError) {
        return payment_scheme.Invoice(e.toJson());
      }

      return payment_scheme.Invoice({"@type": "error", "message": "crash"});
    }

    return payment_scheme.Invoice(
        {"@type": "error", "message": "payment_type_not_found"});
  }

  Future<payment_scheme.Invoice> getInvoiceById({
    String? walletId,
    required String invoiceId,
    bool isOwned = true,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    var get_wallet_id = getWalletId(walletId: walletId, isOwned: isOwned);
    if (get_wallet_id["@type"] == "error") {
      return payment_scheme.Invoice(get_wallet_id);
    }
    String wallet_id = get_wallet_id["wallet_id"];
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        GetInvoice res = await paymentTgId.xendit
            .getInvoice(forUserId: wallet_id, invoice_id: invoiceId);

        return payment_scheme.Invoice({
          "@type": "invoice",
          "id": res.id,
          "status": res.status!.toLowerCase(),
          "external_id": res.external_id,
          "amount": res.amount,
          "title": res.merchant_name,
          "profile_picture": {
            "@type": "profilePictureUrl",
            "url": res.merchant_profile_picture_url,
          },
          "url": res.invoice_url
        });
      }
    } catch (e) {
      if (e is XenditError) {
        return payment_scheme.Invoice(e.toJson());
      }

      return payment_scheme.Invoice({"@type": "error", "message": "crash"});
    }

    return payment_scheme.Invoice(
        {"@type": "error", "message": "payment_type_not_found"});
  }

  Future<payment_scheme.PayOut> createPayout({
    String? walletId,
    required String external_id,
    required int amount,
    required String email,
    bool isOwned = true,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    var get_wallet_id = getWalletId(walletId: walletId, isOwned: isOwned);
    if (get_wallet_id["@type"] == "error") {
      return payment_scheme.PayOut(get_wallet_id);
    }
    String wallet_id = get_wallet_id["wallet_id"];
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        CreatePayOutLink res = await paymentTgId.xendit.createPayOutLink(
          forUserId: wallet_id,
          external_id: external_id,
          amount: amount,
          email: email,
        );
        return payment_scheme.PayOut({
          "@type": "payout",
          "id": res.id,
          "status": res.status!.toLowerCase(),
          "external_id": res.external_id,
          "amount": res.amount,
          "title": res.merchant_name,
          "url": res.payout_url,
        });
      }
    } catch (e) {
      if (e is XenditError) {
        return payment_scheme.PayOut(e.toJson());
      }
      return payment_scheme.PayOut({"@type": "error", "message": "crash"});
    }
    return payment_scheme.PayOut(
        {"@type": "error", "message": "payment_type_not_found"});
  }

  Future<payment_scheme.PayOut> getPayout({
    String? walletId,
    required String id,
    bool isOwned = true,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    var get_wallet_id = getWalletId(walletId: walletId, isOwned: isOwned);
    if (get_wallet_id["@type"] == "error") {
      return payment_scheme.PayOut(get_wallet_id);
    }
    String wallet_id = get_wallet_id["wallet_id"];
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        GetPayOutLink res = await paymentTgId.xendit.getPayOutLink(
          forUserId: wallet_id,
          id: id,
        );
        return payment_scheme.PayOut({
          "@type": "payout",
          "id": res.id,
          "status": res.status!.toLowerCase(),
          "external_id": res.external_id,
          "amount": res.amount,
          "title": res.merchant_name,
          "url": res.payout_url,
        });
      }
    } catch (e) {
      if (e is XenditError) {
        return payment_scheme.PayOut(e.toJson());
      }
      return payment_scheme.PayOut({"@type": "error", "message": "crash"});
    }
    return payment_scheme.PayOut(
        {"@type": "error", "message": "payment_type_not_found"});
  }

  Future<Map> temp({
    String? walletId,
    String withFeeRule = "",
    bool isOwned = true,
    PaymentTgType? paymentTgType,
    PaymentTgId? paymentTgId,
    PaymentTgProductionType? paymentTgProductionType,
  }) async {
    var get_wallet_id = getWalletId(walletId: walletId, isOwned: isOwned);
    if (get_wallet_id["@type"] == "error") {
      return get_wallet_id;
    }
    String wallet_id = get_wallet_id["wallet_id"];
    paymentTgType ??= payment_tg_type;
    paymentTgId ??= payment_id;
    paymentTgProductionType ??= payment_tg_production_type;
    try {
      if (paymentTgType == PaymentTgType.xendit) {
        var res = await paymentTgId.xendit.getPayOutLink(
          forUserId: wallet_id,
          id: "id",
        );

        return res.toJson();
      }
    } catch (e) {
      if (e is XenditError) {
        return e.toJson();
      }
      return {"@type": "error", "message": "crash"};
    }
    return {"@type": "error", "message": "payment_type_not_found"};
  }
}

class PaymentItems {
  PaymentItems();
  Map toJson() {
    return {};
  }
}

class PaymentCustomer {
  PaymentCustomer();
  Map toJson() {
    return {};
  }
}
