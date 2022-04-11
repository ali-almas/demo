import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../components/field/primary/primary_text_field.dart';
import '../../../../shared/ui_color.dart';
import '../../../../utils/l10n.dart';
import '../viewmodel/change_password_view_model.dart';

class ChangePasswordFields extends StatelessWidget {
  const ChangePasswordFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final resetPasswordViewModel = context.watch<ChangePasswordViewModel>();

    return Column(
      children: [
        PrimaryTextField(
          isPasswordHidden: resetPasswordViewModel.isPasswordHidden,
          onChanged: resetPasswordViewModel.updatePassword,
          label: L10n.password,
          errorText: resetPasswordViewModel.passwordError,
          suffixIcon: resetPasswordViewModel.isPasswordHidden == true ? Icons.visibility : Icons.visibility_off,
          suffixIconColor: UIColor.green,
          onTapSuffix: () {
            resetPasswordViewModel.togglePasswordVisibility(PasswordFields.up);
          },
        ),
        const SizedBox(height: 16),
        PrimaryTextField(
          isPasswordHidden: resetPasswordViewModel.isAgainPasswordHidden,
          onChanged: resetPasswordViewModel.updateMatchingPassword,
          label: L10n.againPassword,
          errorText: resetPasswordViewModel.matchingPasswordError,
          suffixIcon: resetPasswordViewModel.isAgainPasswordHidden == true ? Icons.visibility : Icons.visibility_off,
          suffixIconColor: UIColor.green,
          onTapSuffix: () {
            resetPasswordViewModel.togglePasswordVisibility(PasswordFields.down);
          },
        ),
      ],
    );
  }
}
