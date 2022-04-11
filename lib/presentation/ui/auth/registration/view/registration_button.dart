import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../app/generic/generic_builder.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../components/button/primary_button.dart';
import '../../../../utils/l10n.dart';
import '../cubit/registration_cubit.dart';
import '../viewmodel/registration_view_model.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final registrationCubit = context.read<RegistrationCubit>();
    final registrationViewModel = context.watch<RegistrationViewModel>();
    return GenericBuilder<RegistrationCubit, GenericState>(
      builder: (_, state) {
        return PrimaryButton(
          title: L10n.register,
          onTap: registrationViewModel.isFormValid ? () => registrationCubit.register(registrationViewModel.input) : null,
        );
      },
    );
  }
}
