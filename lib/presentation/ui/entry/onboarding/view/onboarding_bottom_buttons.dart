import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../components/button/secondary_button.dart';
import '../../../../utils/l10n.dart';
import '../cubit/onboarding_cubit.dart';
import '../viewModel/onboarding_view_model.dart';

class OnboardingBottomButtons extends StatelessWidget {
  const OnboardingBottomButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final onboardingCubit = context.read<OnboardingCubit>();
    final onBoardingViewModel = context.read<OnboardingViewModel>();
    final carouselController = context.read<CarouselController>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SecondaryButton(
          heroTag: UniqueKey().toString(),
          title: L10n.skip,
          hasBorder: false,
          onTap: onboardingCubit.skip,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: FloatingActionButton(
            child: const Icon(Icons.arrow_forward_rounded),
            onPressed: () {
              if (onBoardingViewModel.isLastItem) {
                onboardingCubit.skip();
              } else {
                onBoardingViewModel.next();
                carouselController.animateToPage(onBoardingViewModel.currentIndex);
              }
            },
          ),
        ),
      ],
    );
  }
}
