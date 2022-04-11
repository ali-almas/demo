import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class HistoryListTile extends StatelessWidget {
  const HistoryListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 64,
        height: 32,
        decoration: BoxDecoration(
          color: UIColor.green.withOpacity(0.06),
          borderRadius: BorderRadius.circular(4),
        ),
        child: SvgPicture.asset(
          "assets/svg/nar.svg",
          fit: BoxFit.scaleDown,
        ),
      ),
      title: Text(
        "Azercell, +994501231213",
        style: UITextStyle.headline3(),
      ),
      trailing: Text(
        "2 AZN",
        style: UITextStyle.headline2(),
      ),
    );
  }
}
