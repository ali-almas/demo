import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../app/generic/generic_listener.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../base/base_gradient.dart';
import '../../../../route/navigation.dart';
import '../cubit/code_confirmation_cubit.dart';
import '../viewmodel/code_confirmation_view_model.dart';
import 'code_confirmation_body.dart';

class CodeConfirmationPage extends StatelessWidget with BaseGradient {
  final PreviousPage previousPage;

  const CodeConfirmationPage({Key? key, required this.previousPage}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return BlocProvider(
      create: (_) => CodeConfirmationCubit(previousPage),
      child: GenericListener<CodeConfirmationCubit, GenericState>(
        listener: (_, state) {
          if (state is Success) {
            Navigation.push(
              state.value.first,
              arguments: state.value.last,
            );
          }
        },
        child: ChangeNotifierProvider(
          create: (_) => CodeConfirmationViewModel(),
          child: const CodeConfirmationBody(),
        ),
      ),
    );
  }
}
