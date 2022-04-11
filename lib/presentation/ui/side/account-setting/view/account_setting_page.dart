import 'package:flutter/material.dart';

import '../../../../base/base_gradient.dart';
import 'account_setting_body.dart';

class AccountSettingPage extends StatelessWidget with BaseGradient {
  const AccountSettingPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return const AccountSettingBody();
  }
}
