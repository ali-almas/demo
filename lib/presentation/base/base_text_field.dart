import 'package:flutter/material.dart';

abstract class BaseTextField extends StatelessWidget {
  final double height = 48.0;
  final TextEditingController? controller;
  final String? label;
  final String? placeholder;
  final String? prefixText;
  final String? errorText;
  final Color? color;
  final double? maxLength;
  final Function(String)? onChanged;
  final String? mask;
  final IconData? suffixIcon;
  final VoidCallback? onTapSuffix;
  final Color? suffixIconColor;
  final bool? isPasswordHidden;

  const BaseTextField({
    Key? key,
    this.maxLength,
    this.controller,
    this.label,
    this.color,
    this.placeholder,
    this.onChanged,
    this.prefixText,
    this.errorText,
    this.mask,
    this.suffixIcon,
    this.onTapSuffix,
    this.suffixIconColor,
    this.isPasswordHidden = false,
  }) : super(key: key);
}
