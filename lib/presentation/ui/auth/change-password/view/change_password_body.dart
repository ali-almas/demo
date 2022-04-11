import 'package:flutter/material.dart';

import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import 'change_password_button.dart';
import 'change_password_password_fields.dart';

class ChangePasswordBody extends StatelessWidget {
  const ChangePasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(flex: 1),
            Text(
              L10n.setNewPassword,
              style: UITextStyle.headline1(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64),
            const ChangePasswordFields(),
            const SizedBox(height: 64),
            const ChangePasswordButton(),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
