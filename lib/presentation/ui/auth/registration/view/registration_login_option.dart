import 'package:flutter/material.dart';

import '../../../../components/button/secondary_button.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';

class RegistrationLoginOption extends StatelessWidget {
  const RegistrationLoginOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          L10n.doYouHaveAnAccount,
          style: UITextStyle.headline3(),
        ),
        SecondaryButton(
          title: L10n.login,
          hasBorder: false,
          textStyle: UITextStyle.headline2(
            color: UIColor.green,
            fontWeight: FontWeight.normal,
          ),
          onTap: () => Navigation.pop(RouteName.loginPage),
        ),
      ],
    );
  }
}
