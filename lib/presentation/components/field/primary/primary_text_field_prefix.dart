import 'package:flutter/material.dart';

import '../../../shared/ui_color.dart';
import '../../../shared/ui_text_style.dart';

class PrimaryTextFieldPrefix extends StatelessWidget {
  final String title;
  const PrimaryTextFieldPrefix({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: const BoxDecoration(
        color: UIColor.clear,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5),
          bottomLeft: Radius.circular(5),
        ),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 92,
          color: UIColor.green.withOpacity(0.05),
          child: Center(
            child: Text(
              title,
              style: UITextStyle.headline2(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
