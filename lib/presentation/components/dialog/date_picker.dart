import 'package:flutter/material.dart';

import '../../shared/ui_color.dart';

class DatePicker {
  static show(context) async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2100),
      cancelText: "Ləğv et",
      confirmText: "Təsdiqlə",
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            shadowColor: UIColor.white,
            colorScheme: const ColorScheme.light(
              primary: UIColor.green,
              onPrimary: UIColor.white,
              surface: UIColor.green,
              onSurface: UIColor.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                primary: UIColor.black,
              ),
            ),
          ),
          child: Container(
            child: child,
          ),
        );
      },
    );
  }
}
