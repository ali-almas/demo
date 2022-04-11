import 'package:flutter/cupertino.dart';

import '../model/drawer_menu_item.dart';

class DrawerItemViewModel extends ChangeNotifier {
  final List<DrawerMenuItem> _items = [
    DrawerMenuItem(type: DrawerMenuItemType.payments),
    DrawerMenuItem(type: DrawerMenuItemType.favorites),
    DrawerMenuItem(type: DrawerMenuItemType.transfers),
    DrawerMenuItem(type: DrawerMenuItemType.cards),
    DrawerMenuItem(type: DrawerMenuItemType.bonuses),
    DrawerMenuItem(type: DrawerMenuItemType.edv),
    DrawerMenuItem(type: DrawerMenuItemType.qrCodePayment),
    DrawerMenuItem(type: DrawerMenuItemType.history),
    DrawerMenuItem(type: DrawerMenuItemType.notification),
    DrawerMenuItem(type: DrawerMenuItemType.separator),
    DrawerMenuItem(type: DrawerMenuItemType.faq),
    DrawerMenuItem(type: DrawerMenuItemType.contact),
    DrawerMenuItem(type: DrawerMenuItemType.termsAndConditions),
    DrawerMenuItem(type: DrawerMenuItemType.logOut),
  ];

  List<DrawerMenuItem> get items => _items;
}
