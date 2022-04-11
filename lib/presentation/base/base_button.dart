import 'package:flutter/material.dart';

abstract class BaseButton extends StatelessWidget {
  final Widget? prefixIcon;
  final String title;
  final double height;
  final double elevation;
  final VoidCallback? onTap;
  final bool hasBorder;
  final String? heroTag;
  final Color? color;
  final TextStyle? textStyle;

  const BaseButton({
    Key? key,
    required this.title,
    this.height = 56.0,
    this.elevation = 0.0,
    this.onTap,
    this.hasBorder = true,
    this.heroTag,
    this.color,
    this.textStyle,
    this.prefixIcon,
  }) : super(key: key);
}
