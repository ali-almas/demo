import 'package:flutter/material.dart';

import '../../base/base_button.dart';
import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class NumberButton extends BaseButton {
  final double? opacity;
  const NumberButton({
    Key? key,
    Color? color,
    VoidCallback? onTap,
    this.opacity,
    required String title,
  }) : super(
          key: key,
          title: title,
          color: color,
          onTap: onTap,
        );

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
        side: const BorderSide(
          color: UIColor.clear,
        ),
        primary: UIColor.black,
        backgroundColor: UIColor.green.withOpacity(opacity ?? 0.05),
      ),
      child: Text(
        title,
        style: UITextStyle.headline1(fontWeight: FontWeight.w400, fontSize: 32),
      ),
    );
  }
}
