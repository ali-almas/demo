import 'package:demo/presentation/shared/ui_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UITextStyle {
  UITextStyle._();

  static TextStyle headline1({
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 24.0,
    Color color = UIColor.black,
  }) {
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle headline2({
    FontWeight fontWeight = FontWeight.w500,
    double fontSize = 16.0,
    Color color = UIColor.black,
  }) {
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }

  static TextStyle headline3({
    FontWeight fontWeight = FontWeight.w400,
    double fontSize = 12.0,
    Color color = UIColor.black,
  }) {
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }
}
