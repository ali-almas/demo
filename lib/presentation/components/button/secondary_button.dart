import 'package:flutter/material.dart';

import '../../base/base_button.dart';
import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class SecondaryButton extends BaseButton {
  const SecondaryButton({
    Key? key,
    required String title,
    VoidCallback? onTap,
    bool? hasPrefixIcon,
    Widget? prefixIcon,
    bool hasBorder = true,
    String? heroTag,
    TextStyle? textStyle,
    Color? textColor,
    double height = 56.0,
  }) : super(
          key: key,
          title: title,
          onTap: onTap,
          hasBorder: hasBorder,
          heroTag: heroTag,
          textStyle: textStyle,
          color: textColor,
          prefixIcon: prefixIcon,
          height: height,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Hero(
        tag: heroTag ?? "secondary-button",
        child: OutlinedButton.icon(
          icon: prefixIcon ?? const SizedBox.shrink(),
          label: Text(title),
          onPressed: onTap,
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: 1,
              color: hasBorder ? UIColor.green : UIColor.clear,
            ),
            primary: color ?? UIColor.green,
            onSurface: UIColor.green,
            elevation: elevation,
            shadowColor: UIColor.clear,
            textStyle: textStyle ?? UITextStyle.headline2(color: UIColor.white),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
          ),
        ),
      ),
    );
  }
}
