import 'package:flutter/material.dart';

import '../../../../components/button/secondary_button.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';

class LoginNewAccount extends StatelessWidget {
  const LoginNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          L10n.doNotHaveAnAccount,
          style: UITextStyle.headline3(),
        ),
        SecondaryButton(
          title: L10n.register,
          hasBorder: false,
          heroTag: UniqueKey().toString(),
          textStyle: UITextStyle.headline2(
            fontWeight: FontWeight.w400,
            color: UIColor.green,
          ),
          onTap: () => Navigation.pop(RouteName.registrationPage),
        ),
      ],
    );
  }
}
