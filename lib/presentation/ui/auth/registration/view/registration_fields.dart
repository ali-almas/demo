import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../components/field/phone/phone_number_field.dart';
import '../../../../components/field/primary/primary_text_field.dart';
import '../../../../shared/ui_color.dart';
import '../../../../utils/l10n.dart';
import '../../change-password/viewmodel/change_password_view_model.dart';
import '../viewmodel/registration_view_model.dart';

class RegistrationFields extends StatelessWidget {
  const RegistrationFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registrationViewModel = context.watch<RegistrationViewModel>();
    return Column(
      children: [
        PhoneNumberField(
          onChanged: registrationViewModel.updateMobile,
          label: L10n.mobile,
          suffixIcon: null,
          errorText: registrationViewModel.mobileError,
          controller: registrationViewModel.mobileController,
        ),
        const SizedBox(height: 16),
        PrimaryTextField(
          errorText: registrationViewModel.passwordError,
          isPasswordHidden: registrationViewModel.isPasswordHidden,
          onTapSuffix: () {
            registrationViewModel.togglePasswordVisibility(PasswordFields.up);
          },
          onChanged: registrationViewModel.updatePassword,
          label: L10n.password,
          suffixIconColor: UIColor.green,
          suffixIcon: registrationViewModel.isPasswordHidden == true ? Icons.visibility_outlined : Icons.visibility_off,
        ),
        const SizedBox(height: 16),
        PrimaryTextField(
          errorText: registrationViewModel.matchingPasswordError,
          suffixIconColor: UIColor.green,
          isPasswordHidden: registrationViewModel.isAgainPasswordHidden,
          onTapSuffix: () {
            registrationViewModel.togglePasswordVisibility(PasswordFields.down);
          },
          onChanged: registrationViewModel.updateMatchingPassword,
          label: L10n.againPassword,
          suffixIcon: registrationViewModel.isAgainPasswordHidden == true ? Icons.visibility_outlined : Icons.visibility_off,
        ),
      ],
    );
  }
}
