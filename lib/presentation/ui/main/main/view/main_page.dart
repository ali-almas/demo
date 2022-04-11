import 'package:flutter/material.dart';

import '../../../../base/base_gradient.dart';
import '../../../../components/button/secondary_button.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import '../../drawer/view/drawer_menu.dart';
import '../viewmodel/main_view_model.dart';
import 'main_body.dart';
import 'main_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget with BaseGradient {
  final EntranceState entranceState;

  const MainPage({Key? key, required this.entranceState}) : super(key: key);

  @override
  List<Widget>? actions() {
    return [
      if (entranceState == EntranceState.unregistered)
        SecondaryButton(
          textColor: UIColor.black,
          onTap: () {},
          heroTag: UniqueKey().toString(),
          title: L10n.login,
          hasBorder: false,
          textStyle: UITextStyle.headline2(
            fontWeight: FontWeight.w400,
          ),
        )
      else
        IconButton(
          onPressed: () => Navigation.push(RouteName.notificationsPage),
          icon: const Icon(
            Icons.notifications_none_rounded,
          ),
        ),
    ];
  }

  @override
  Widget? drawer(BuildContext context) {
    return const DrawerMenu();
  }

  @override
  Widget? bottomNavigationBar(BuildContext context) {
    return entranceState == EntranceState.registered ? const MainBottomNavigationBar() : null;
  }

  @override
  Widget? body(BuildContext context) {
    return const MainBody();
  }
}
