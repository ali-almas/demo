import 'package:flutter/material.dart';

import '../../../../base/base_gradient.dart';
import 'terms_and_conditions_body.dart';

class TermsAndConditionsPage extends StatelessWidget with BaseGradient {
  const TermsAndConditionsPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return const TermsAndConditionsBody();
  }
}
