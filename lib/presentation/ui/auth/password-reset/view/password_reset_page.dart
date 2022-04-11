import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../app/generic/generic_listener.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../base/base_gradient.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../../code-confirmation/viewmodel/code_confirmation_view_model.dart';
import '../cubit/password_reset_cubit.dart';
import '../viewmodel/password_reset_view_model.dart';
import 'password_reset_body.dart';

class PasswordResetPage extends StatelessWidget with BaseGradient {
  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => PasswordResetCubit(),
        child: GenericListener<PasswordResetCubit, GenericState>(
          listener: (_, state) {
            if (state is Success) {
              Navigation.push(
                RouteName.codeConfirmationPage,
                arguments: PreviousPage.resetPassword,
              );
            }
          },
          child: ChangeNotifierProvider(
            create: (_) => PasswordResetViewModel(),
            child: const PasswordResetBody(),
          ),
        ),
      ),
    );
  }
}
