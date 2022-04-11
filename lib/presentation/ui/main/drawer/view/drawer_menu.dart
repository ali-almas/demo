import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/drawer_item_view_model.dart';
import 'drawer_menu_item_list.dart';
import 'drawer_menu_top_item.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DrawerItemViewModel(),
      child: Drawer(
        child: SafeArea(
          child: Column(
            children: const [
              DrawerMenuTopItem(),
              Divider(),
              Expanded(child: DrawerMenuItemList()),
              SizedBox(height: 8),
              Text("Version 1.0"),
            ],
          ),
        ),
      ),
    );
  }
}
