import 'package:flutter/material.dart';

import '../../../../base/base_gradient.dart';
import 'renew_password_body.dart';

class RenewPasswordPage extends StatelessWidget with BaseGradient {
  const RenewPasswordPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return const RenewPasswordBody();
  }
}
