import 'package:demo/presentation/ui/auth/registration/view/registration_button.dart';
import 'package:demo/presentation/ui/auth/registration/view/registration_fields.dart';
import 'package:demo/presentation/ui/auth/registration/view/registration_login_option.dart';
import 'package:flutter/material.dart';

import '../../../../components/button/secondary_button.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import 'registration_check_box.dart';

class RegistrationBody extends StatelessWidget {
  const RegistrationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            const SizedBox(height: 86),
            Text(
              L10n.welcome,
              style: UITextStyle.headline1(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 86),
            const RegistrationFields(),
            const SizedBox(height: 4),
            const RegistrationCheckBox(),
            const SizedBox(height: 16),
            const RegistrationButton(),
            const SizedBox(height: 4),
            const RegistrationLoginOption(),
            const SizedBox(height: 82),
            SecondaryButton(
              title: L10n.paymentWithoutRegister,
              heroTag: UniqueKey().toString(),
              hasBorder: false,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
