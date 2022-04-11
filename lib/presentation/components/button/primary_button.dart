import 'package:flutter/material.dart';

import '../../base/base_button.dart';
import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class PrimaryButton extends BaseButton {
  const PrimaryButton({
    Key? key,
    required String title,
    VoidCallback? onTap,
    String? heroTag,
    Color? buttonColor,
  }) : super(key: key, title: title, onTap: onTap, heroTag: heroTag, color: buttonColor);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Hero(
        tag: heroTag ?? "primary-button",
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            primary: color ?? UIColor.green,
            onPrimary: UIColor.white,
            onSurface: color,
            elevation: elevation,
            shadowColor: UIColor.clear,
            textStyle: UITextStyle.headline2(color: UIColor.white),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
          child: Text(title),
        ),
      ),
    );
  }
}
