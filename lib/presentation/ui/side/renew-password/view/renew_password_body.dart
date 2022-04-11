import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../components/button/primary_button.dart';
import '../../../../shared/ui_color.dart';
import '../../../../utils/l10n.dart';
import 'renew_password_form.dart';

class RenewPasswordBody extends StatelessWidget {
  const RenewPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: UIColor.green.withOpacity(0.07),
              child: SvgPicture.asset("assets/svg/profile.svg", width: 24, height: 24),
            ),
            const SizedBox(height: 16),
            const Divider(),
            const Spacer(),
            const RenewPasswordForm(),
            const Spacer(flex: 4),
            PrimaryButton(
              title: L10n.changePassword,
              buttonColor: UIColor.green.withOpacity(0.65),
              onTap: () {},
            ),
            const SizedBox(height: 8)
          ],
        ),
      ),
    );
  }
}
