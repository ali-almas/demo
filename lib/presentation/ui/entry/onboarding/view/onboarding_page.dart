import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../../app/cubit/app_cubit.dart';
import '../../../../../app/generic/generic_consumer.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../base/base_gradient.dart';
import '../cubit/onboarding_cubit.dart';
import '../viewModel/onboarding_view_model.dart';
import 'onboarding_body.dart';

class OnboardingPage extends StatelessWidget with BaseGradient {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget? body(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => OnboardingViewModel()),
          Provider(create: (_) => CarouselController()),
        ],
        child: GenericConsumer<OnboardingCubit, GenericState>(
          listener: (_, state) {
            if (state is SkipOnboarding) {
              BlocProvider.of<AppCubit>(context).check();
            }
          },
          builder: (_, state) => const OnBoardingBody(),
        ),
      ),
    );
  }
}
