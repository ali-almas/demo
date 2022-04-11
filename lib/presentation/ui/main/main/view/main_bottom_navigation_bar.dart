import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../utils/l10n.dart';
import '../viewmodel/main_view_model.dart';
import 'bottom_navigation_bar_item.dart';

class MainBottomNavigationBar extends StatelessWidget {
  final int numberOfTabs;
  const MainBottomNavigationBar({Key? key, this.numberOfTabs = 3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainViewModel = context.watch<MainViewModel>();

    return BottomNavigationBar(
      currentIndex: mainViewModel.tabIndex,
      onTap: (index) => index < numberOfTabs ? mainViewModel.changeTab(index) : Scaffold.of(context).openDrawer(),
      items: [
        MainBottomNavigationBarItem(title: L10n.payment, imagePath: 'assets/svg/card.svg'),
        MainBottomNavigationBarItem(title: L10n.bonuses, imagePath: 'assets/svg/bonus.svg'),
        MainBottomNavigationBarItem(title: L10n.history, imagePath: 'assets/svg/clock.svg'),
        MainBottomNavigationBarItem(title: L10n.more, imagePath: 'assets/svg/menu.svg'),
      ],
    );
  }
}
