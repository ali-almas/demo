import 'package:flutter/material.dart';

import '../../../base/base_gradient.dart';
import '../../../components/logo/logo.dart';

class SplashPage extends StatelessWidget with BaseGradient {
  const SplashPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return null;
  }

  @override
  Widget? body(BuildContext context) {
    return const Center(
      child: Logo(),
    );
  }
}
