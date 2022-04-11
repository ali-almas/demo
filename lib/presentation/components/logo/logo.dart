import 'package:flutter/material.dart';

import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Demo",
      style: UITextStyle.headline1(
        color: UIColor.green,
      ),
    );
  }
}
