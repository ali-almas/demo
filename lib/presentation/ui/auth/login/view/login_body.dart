import 'package:flutter/material.dart';

import '../../../../components/button/secondary_button.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import 'login_button.dart';
import 'login_fields.dart';
import 'login_new_account.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          Text(
            L10n.welcome,
            style: UITextStyle.headline1(),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          const LoginFields(),
          Align(
            alignment: Alignment.centerRight,
            child: SecondaryButton(
              title: L10n.forgotPassword,
              hasBorder: false,
              heroTag: UniqueKey().toString(),
              textStyle: UITextStyle.headline3(color: UIColor.black.withOpacity(0.6)),
              onTap: () => Navigation.push(RouteName.passwordResetPage),
            ),
          ),
          const LoginButton(),
          const SizedBox(height: 8),
          const LoginNewAccount(),
          const Spacer(),
          SecondaryButton(
            title: L10n.paymentWithoutRegister,
            heroTag: UniqueKey().toString(),
            hasBorder: false,
            onTap: () {},
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
