import 'package:flutter/material.dart';

class Navigation {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static push(String routeName, {dynamic arguments}) async {
    return await navigatorKey.currentState?.pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  static pop(dynamic results) {
    return navigatorKey.currentState?.pop(results);
  }
}
