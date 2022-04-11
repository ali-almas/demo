import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/generic/generic_builder.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../components/button/primary_button.dart';
import '../../../../utils/l10n.dart';
import '../cubit/password_reset_cubit.dart';
import '../viewmodel/password_reset_view_model.dart';

class PasswordResetButton extends StatelessWidget {
  const PasswordResetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final passwordResetCubit = context.read<PasswordResetCubit>();
    final passwordResetViewModel = context.watch<PasswordResetViewModel>();

    return GenericBuilder<PasswordResetCubit, GenericState>(builder: (_, state) {
      return PrimaryButton(
        title: L10n.sendCode,
        onTap: passwordResetViewModel.isFormValid ? () => passwordResetCubit.reset(passwordResetViewModel.input) : null,
      );
    });
  }
}
