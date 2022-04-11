import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../components/field/phone/phone_number_field.dart';
import '../../../../components/field/primary/primary_text_field.dart';
import '../../../../shared/ui_color.dart';
import '../../../../utils/l10n.dart';
import '../viewmodel/login_view_model.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginViewModel = context.watch<LoginViewModel>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        PhoneNumberField(
          onChanged: loginViewModel.updateMobile,
          label: L10n.mobile,
          suffixIcon: null,
          errorText: loginViewModel.mobileError,
          controller: loginViewModel.mobileController,
        ),
        const SizedBox(height: 16),
        PrimaryTextField(
          onChanged: loginViewModel.updatePassword,
          label: L10n.password,
          onTapSuffix: () => loginViewModel.togglePasswordVisibility(),
          isPasswordHidden: loginViewModel.isPasswordHidden,
          suffixIcon: loginViewModel.isPasswordHidden == true ? Icons.visibility_outlined : Icons.visibility_off,
          suffixIconColor: UIColor.green,
          errorText: loginViewModel.passwordError,
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
