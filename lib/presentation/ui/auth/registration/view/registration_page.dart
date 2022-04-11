import 'package:demo/presentation/ui/auth/registration/view/registration_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../app/generic/generic_listener.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../base/base_gradient.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../code-confirmation/viewmodel/code_confirmation_view_model.dart';
import '../cubit/registration_cubit.dart';
import '../viewmodel/registration_view_model.dart';

class RegistrationPage extends StatelessWidget with BaseGradient {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (_) => RegistrationCubit(),
        child: GenericListener<RegistrationCubit, GenericState>(
          listener: (_, state) {
            if (state is Success) {
              Navigation.push(
                RouteName.codeConfirmationPage,
                arguments: PreviousPage.registration,
              );
            }
          },
          child: ChangeNotifierProvider(
            create: (_) => RegistrationViewModel(),
            child: const RegistrationBody(),
          ),
        ),
      ),
    );
  }
}
