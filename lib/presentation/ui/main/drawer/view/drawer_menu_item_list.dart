import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../route/navigation.dart';
import '../../../../shared/ui_text_style.dart';
import '../model/drawer_menu_item.dart';
import '../viewmodel/drawer_item_view_model.dart';

class DrawerMenuItemList extends StatelessWidget {
  const DrawerMenuItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerItemViewModel = context.read<DrawerItemViewModel>();

    return ListView.builder(
      itemBuilder: (_, index) {
        if (drawerItemViewModel.items[index].type == DrawerMenuItemType.separator) {
          return const Divider();
        }

        return Hero(
          tag: UniqueKey().toString(),
          child: ListTile(
            onTap: () {
              final route = drawerItemViewModel.items[index].route;
              if (route != null) Navigation.push(route);
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 24),
            title: Text(
              drawerItemViewModel.items[index].text ?? "",
              style: UITextStyle.headline2(
                fontWeight: FontWeight.w400,
              ),
            ),
            leading: drawerItemViewModel.items[index].icon,
          ),
        );
      },
      itemCount: drawerItemViewModel.items.length,
    );
  }
}
