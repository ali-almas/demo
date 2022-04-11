import 'package:flutter/material.dart';

import '../../shared/ui_text_style.dart';

class HistoryListHeader extends StatelessWidget {
  const HistoryListHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "05.02.2022",
      style: UITextStyle.headline3(),
    );
  }
}
