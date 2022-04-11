import 'package:animations/animations.dart';
import 'package:demo/presentation/shared/ui_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui_color.dart';

class UITheme {
  UITheme._();

  static get appTheme {
    return ThemeData(
      primaryColor: UIColor.green,
      appBarTheme: const AppBarTheme(
        backgroundColor: UIColor.clear,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: UIColor.black,
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 0,
        highlightElevation: 0.0,
        backgroundColor: UIColor.green,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: UIColor.green,
        showUnselectedLabels: true,
        selectedLabelStyle: UITextStyle.headline3(
          fontWeight: FontWeight.w400,
          color: UIColor.black.withOpacity(0.6),
        ),
        unselectedLabelStyle: UITextStyle.headline3(
          fontWeight: FontWeight.w400,
          color: UIColor.black.withOpacity(0.6),
        ),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.android: SharedAxisPageTransitionsBuilder(
            transitionType: SharedAxisTransitionType.vertical,
          ),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}
