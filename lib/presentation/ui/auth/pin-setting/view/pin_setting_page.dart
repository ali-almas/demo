import 'package:demo/presentation/ui/auth/pin-setting/view/pin_setting_body.dart';
import 'package:flutter/material.dart';

import '../../../../base/base_gradient.dart';

class PinSettingPage extends StatelessWidget with BaseGradient {
  const PinSettingPage({Key? key}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return const PinSettingBody();
  }
}
