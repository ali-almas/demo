import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../route/route_name.dart';
import '../../../../shared/ui_color.dart';
import '../../../../utils/l10n.dart';

enum DrawerMenuItemType {
  payments,
  favorites,
  transfers,
  cards,
  bonuses,
  edv,
  qrCodePayment,
  history,
  notification,
  faq,
  contact,
  termsAndConditions,
  logOut,
  separator
}

class DrawerMenuItem {
  final DrawerMenuItemType type;

  DrawerMenuItem({required this.type});

  String? get text {
    if (type == DrawerMenuItemType.payments) {
      return L10n.payment;
    } else if (type == DrawerMenuItemType.favorites) {
      return L10n.favorites;
    } else if (type == DrawerMenuItemType.transfers) {
      return L10n.transfers;
    } else if (type == DrawerMenuItemType.cards) {
      return L10n.cards;
    } else if (type == DrawerMenuItemType.bonuses) {
      return L10n.bonuses;
    } else if (type == DrawerMenuItemType.edv) {
      return L10n.edv;
    } else if (type == DrawerMenuItemType.qrCodePayment) {
      return L10n.qrCodePayment;
    } else if (type == DrawerMenuItemType.history) {
      return L10n.history;
    } else if (type == DrawerMenuItemType.notification) {
      return L10n.notification;
    } else if (type == DrawerMenuItemType.separator) {
      return "";
    } else if (type == DrawerMenuItemType.faq) {
      return L10n.faq;
    } else if (type == DrawerMenuItemType.contact) {
      return L10n.contact;
    } else if (type == DrawerMenuItemType.termsAndConditions) {
      return L10n.userAgreement;
    } else if (type == DrawerMenuItemType.logOut) {
      return L10n.logout;
    }

    return null;
  }

  String? get route {
    switch (type) {
      case DrawerMenuItemType.payments:
        // TODO: Handle this case.
        break;
      case DrawerMenuItemType.favorites:
        return RouteName.favoritePage;
      case DrawerMenuItemType.transfers:
        return RouteName.transfers;
      case DrawerMenuItemType.cards:
        return RouteName.userCardsPage;
      case DrawerMenuItemType.bonuses:
        // TODO: Handle this case.
        break;
      case DrawerMenuItemType.edv:
        // TODO: Handle this case.
        break;
      case DrawerMenuItemType.qrCodePayment:
        // TODO: Handle this case.
        break;
      case DrawerMenuItemType.history:
        // TODO: Handle this case.
        break;
      case DrawerMenuItemType.notification:
        // TODO: Handle this case.
        break;
      case DrawerMenuItemType.faq:
        return RouteName.faqPage;
      case DrawerMenuItemType.contact:
        return RouteName.contactUsPage;
      case DrawerMenuItemType.termsAndConditions:
        return RouteName.termsAndConditionsPage;
      case DrawerMenuItemType.logOut:
        // TODO: Handle this case.
        break;
      case DrawerMenuItemType.separator:
        // TODO: Handle this case.
        break;
    }

    return null;
  }

  Widget? get icon {
    if (type == DrawerMenuItemType.payments) {
      return const Icon(CupertinoIcons.creditcard, color: UIColor.green);
    } else if (type == DrawerMenuItemType.favorites) {
      return const Icon(CupertinoIcons.star, color: UIColor.green);
    } else if (type == DrawerMenuItemType.transfers) {
      return const Icon(CupertinoIcons.arrow_right_arrow_left, color: UIColor.green);
    } else if (type == DrawerMenuItemType.cards) {
      return SvgPicture.asset("assets/svg/cards.svg");
    } else if (type == DrawerMenuItemType.bonuses) {
      return const Icon(CupertinoIcons.gift, color: UIColor.green);
    } else if (type == DrawerMenuItemType.edv) {
      return SvgPicture.asset("assets/svg/edv.svg");
    } else if (type == DrawerMenuItemType.qrCodePayment) {
      return const Icon(Icons.qr_code_scanner_rounded, color: UIColor.green);
    } else if (type == DrawerMenuItemType.history) {
      return const Icon(Icons.history_sharp, color: UIColor.green);
    } else if (type == DrawerMenuItemType.notification) {
      return const Icon(CupertinoIcons.bell, color: UIColor.green);
    } else if (type == DrawerMenuItemType.faq) {
      return const Icon(CupertinoIcons.question_circle, color: UIColor.green);
    } else if (type == DrawerMenuItemType.contact) {
      return const Icon(CupertinoIcons.phone, color: UIColor.green);
    } else if (type == DrawerMenuItemType.termsAndConditions) {
      return const Icon(CupertinoIcons.doc_plaintext, color: UIColor.green);
    } else if (type == DrawerMenuItemType.logOut) {
      return const Icon(CupertinoIcons.square_arrow_left, color: UIColor.green);
    }

    return null;
  }
}
