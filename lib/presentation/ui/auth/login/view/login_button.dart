import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../app/generic/generic_builder.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../components/button/primary_button.dart';
import '../../../../utils/l10n.dart';
import '../cubit/login_cubit.dart';
import '../viewmodel/login_view_model.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    final loginViewModel = context.watch<LoginViewModel>();

    return GenericBuilder<LoginCubit, GenericState>(
      builder: (_, state) {
        return PrimaryButton(
          title: L10n.login,
          onTap: loginViewModel.isFormValid ? () => loginCubit.login(loginViewModel.input) : null,
        );
      },
    );
  }
}
