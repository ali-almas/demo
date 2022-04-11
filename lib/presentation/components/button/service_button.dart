import 'package:flutter/material.dart';

import '../../base/base_button.dart';
import '../../shared/ui_color.dart';
import '../../shared/ui_text_style.dart';

class ServiceButton extends BaseButton {
  final double? opacity;
  final Widget? image;
  const ServiceButton({
    Key? key,
    Color? color,
    VoidCallback? onTap,
    this.image,
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
        elevation: elevation,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
        side: const BorderSide(
          color: UIColor.clear,
        ),
        primary: UIColor.black,
        backgroundColor: UIColor.green.withOpacity(opacity ?? 0.05),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image ?? const SizedBox.shrink(),
          Text(
            title,
            style: UITextStyle.headline3(),
          ),
        ],
      ),
    );
  }
}
