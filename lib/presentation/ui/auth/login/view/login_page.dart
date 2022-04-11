import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../app/cubit/app_cubit.dart';
import '../../../../../app/generic/generic_listener.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../base/base_gradient.dart';
import '../cubit/login_cubit.dart';
import '../viewmodel/login_view_model.dart';
import 'login_body.dart';

class LoginPage extends StatelessWidget with BaseGradient {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => LoginCubit(),
        child: GenericListener<LoginCubit, GenericState>(
          listener: (_, state) {
            if (state is Success) {
              BlocProvider.of<AppCubit>(context).check();
            }
          },
          child: ChangeNotifierProvider(
            create: (_) => LoginViewModel(),
            child: const LoginBody(),
          ),
        ),
      ),
    );
  }
}
