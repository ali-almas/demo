import 'package:flutter/material.dart';

class UIColor {
  UIColor._();

  static const Color green = Color(0xff1C6F38);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffFFFFFF);
  static const Color red = Color(0xffF61212);

  static const Color clear = Colors.transparent;

  static List<Color> gradient = [
    const Color(0xff47A968).withOpacity(0.15),
    const Color(0xffB4B4B4).withOpacity(0),
  ];
}
