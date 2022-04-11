import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/generic/generic_builder.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../components/button/primary_button.dart';
import '../../../../utils/l10n.dart';
import '../cubit/change_password_cubit.dart';
import '../viewmodel/change_password_view_model.dart';

class ChangePasswordButton extends StatelessWidget {
  const ChangePasswordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final changePasswordCubit = context.read<ChangePasswordCubit>();
    final changePasswordViewModel = context.watch<ChangePasswordViewModel>();

    return GenericBuilder<ChangePasswordCubit, GenericState>(builder: (_, state) {
      return PrimaryButton(
        title: L10n.setPassword,
        onTap: changePasswordViewModel.isFormValid ? () => changePasswordCubit.setPassword(changePasswordViewModel.input) : null,
      );
    });
  }
}
