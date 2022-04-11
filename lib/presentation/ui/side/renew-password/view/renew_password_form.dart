import 'package:flutter/material.dart';

import '../../../../components/field/primary/primary_text_field.dart';
import '../../../../shared/ui_color.dart';
import '../../../../utils/l10n.dart';

class RenewPasswordForm extends StatelessWidget {
  const RenewPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrimaryTextField(
          suffixIcon: Icons.remove_red_eye_outlined,
          label: L10n.currentPassword,
          onTapSuffix: () {},
          suffixIconColor: UIColor.green,
        ),
        const SizedBox(height: 32),
        PrimaryTextField(
          suffixIcon: Icons.remove_red_eye_outlined,
          label: L10n.newPassword,
          onTapSuffix: () {},
          suffixIconColor: UIColor.green,
        ),
        const SizedBox(height: 32),
        PrimaryTextField(
          suffixIcon: Icons.remove_red_eye_outlined,
          label: L10n.matchingPassword,
          onTapSuffix: () {},
          suffixIconColor: UIColor.green,
        ),
      ],
    );
  }
}
