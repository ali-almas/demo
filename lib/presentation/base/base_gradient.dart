import 'package:flutter/material.dart';

import '../components/logo/logo.dart';
import '../shared/ui_color.dart';

mixin BaseGradient on StatelessWidget {
  AppBar? appBar() {
    return AppBar(
      title: const Logo(),
      actions: actions(),
    );
  }

  List<Widget>? actions() => null;

  Widget? body(BuildContext context) => null;

  Widget? drawer(BuildContext context) => null;

  Widget? bottomNavigationBar(BuildContext context) => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: UIColor.white,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: UIColor.gradient,
          ),
        ),
        child: Scaffold(
          backgroundColor: UIColor.clear,
          appBar: appBar(),
          body: body(context),
          drawer: drawer(context),
          bottomNavigationBar: bottomNavigationBar(context),
        ),
      ),
    );
  }
}
