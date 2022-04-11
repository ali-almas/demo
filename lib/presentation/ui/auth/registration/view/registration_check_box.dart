import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../shared/ui_color.dart';
import '../../../../shared/ui_text_style.dart';
import '../../../../utils/l10n.dart';
import '../viewmodel/registration_view_model.dart';

class RegistrationCheckBox extends StatelessWidget {
  const RegistrationCheckBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registrationViewModel = context.watch<RegistrationViewModel>();

    return CheckboxListTile(
      activeColor: UIColor.green,
      value: registrationViewModel.checkBoxValue,
      onChanged: (value) {
        if (value != null) registrationViewModel.toggleCheckbox(value);
      },
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      title: RichText(
        text: TextSpan(
          style: UITextStyle.headline2(fontSize: 12),
          children: <TextSpan>[
            const TextSpan(text: 'PayPark '),
            TextSpan(
              text: L10n.registrationAgreementLink,
              style: UITextStyle.headline3(fontWeight: FontWeight.w500, color: UIColor.green),
            ),
            TextSpan(text: L10n.registrationAgreementText),
          ],
        ),
      ),
    );
  }
}
