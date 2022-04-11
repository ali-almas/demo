import 'package:flutter/material.dart';

import '../../../../shared/ui_text_style.dart';
import 'terms_and_conditions_list.dart';

class TermsAndConditionsBody extends StatelessWidget {
  const TermsAndConditionsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Text(
            "İstifadəçi razılaşması",
            style: UITextStyle.headline1(),
          ),
          const SizedBox(height: 16),
          const Divider(),
          const Expanded(child: TermsAndConditionsList()),
        ],
      ),
    );
  }
}
