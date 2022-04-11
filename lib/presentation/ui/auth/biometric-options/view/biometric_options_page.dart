import 'package:flutter/cupertino.dart';

import '../../../../base/base_gradient.dart';
import 'biometric_options_body.dart';

class BiometricOptionsPage extends StatelessWidget with BaseGradient {
  const BiometricOptionsPage({Key? key}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return const BiometricOptionsBody();
  }
}
