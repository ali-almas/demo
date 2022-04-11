import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/generic/generic_builder.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../base/base_gradient.dart';
import '../cubit/faqs_cubit.dart';
import 'faqs_body.dart';

class FaqsPage extends StatelessWidget with BaseGradient {
  const FaqsPage({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return AppBar();
  }

  @override
  Widget? body(BuildContext context) {
    return BlocProvider(
      create: (context) => FaqsCubit()..fetchFaqs(),
      child: GenericBuilder<FaqsCubit, GenericState>(builder: (_, state) {
        if (state is Success) {
          return FaqsBody(faqs: state.value);
        }

        return const SizedBox.shrink();
      }),
    );
  }
}
