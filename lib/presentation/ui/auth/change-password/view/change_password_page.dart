import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../app/generic/generic_listener.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../base/base_gradient.dart';
import '../../../../route/navigation.dart';
import '../../../../route/route_name.dart';
import '../cubit/change_password_cubit.dart';
import '../viewmodel/change_password_view_model.dart';
import 'change_password_body.dart';

class ChangePasswordPage extends StatelessWidget with BaseGradient {
  final String token;
  const ChangePasswordPage({Key? key, required this.token}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordCubit(),
      child: GenericListener<ChangePasswordCubit, GenericState>(
        listener: (_, state) {
          if (state is Success) {
            Navigation.push(RouteName.loginPage);
          }
        },
        child: ChangeNotifierProvider(
          create: (_) => ChangePasswordViewModel(token),
          child: const ChangePasswordBody(),
        ),
      ),
    );
  }
}
