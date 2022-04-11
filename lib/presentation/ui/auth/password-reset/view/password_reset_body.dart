import 'package:demo/presentation/ui/auth/password-reset/view/password_reset_button.dart';
import 'package:demo/presentation/ui/auth/password-reset/view/password_reset_field.dart';
import 'package:flutter/material.dart';

import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';

class PasswordResetBody extends StatelessWidget {
  const PasswordResetBody({Key? key}) : super(key: key);

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
              L10n.forgotPassword,
              style: UITextStyle.headline1(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 64),
            const PasswordResetField(),
            const SizedBox(height: 24),
            const PasswordResetButton(),
            const Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
