import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/field/phone/phone_number_field.dart';
import '../../../../utils/l10n.dart';
import '../viewmodel/password_reset_view_model.dart';

class PasswordResetField extends StatelessWidget {
  const PasswordResetField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final passwordResetViewModel = context.watch<PasswordResetViewModel>();

    return PhoneNumberField(
      onChanged: passwordResetViewModel.updateMobile,
      label: L10n.mobile,
      errorText: passwordResetViewModel.mobileError,
      controller: passwordResetViewModel.mobileController,
      suffixIcon: null,
    );
  }
}
