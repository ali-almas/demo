import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../components/button/primary_button.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import 'account_setting_edit.dart';
import 'account_setting_field.dart';

class AccountSettingBody extends StatelessWidget {
  const AccountSettingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: UIColor.green.withOpacity(0.07),
              child: SvgPicture.asset("assets/svg/profile.svg", width: 24, height: 24),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            Text(
              L10n.successPasswordText,
              style: UITextStyle.headline2(color: UIColor.green),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            AccountSettingField(headText: L10n.name),
            AccountSettingField(headText: L10n.surname),
            AccountSettingField(
              headText: L10n.language,
              suffixIcon: CupertinoIcons.chevron_down,
            ),
            AccountSettingEdit(editText: L10n.changeMobil),
            const SizedBox(height: 16),
            AccountSettingEdit(
              editText: L10n.changePassword,
              onTap: () => Navigation.push(RouteName.renewPasswordPage),
            ),
            const SizedBox(height: 32),
            PrimaryButton(
              title: L10n.changesSave,
              onTap: () {},
              buttonColor: UIColor.green.withOpacity(0.65),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
