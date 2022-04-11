import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../bonus/bonus_page.dart';
import '../../../history/history_page.dart';
import '../../../payment/payment/view/payment_page.dart';
import '../viewmodel/main_view_model.dart';

class MainBody extends StatelessWidget {
  static final List<Widget> _pages = [
    const PaymentPage(),
    const BonusPage(),
    const HistoryPage(),
  ];

  const MainBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainViewModel = context.watch<MainViewModel>();

    return IndexedStack(
      children: _pages,
      index: mainViewModel.tabIndex,
    );
  }
}
