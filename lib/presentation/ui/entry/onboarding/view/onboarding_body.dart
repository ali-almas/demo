import 'package:flutter/material.dart';

import 'onboarding_bottom_buttons.dart';
import 'onboarding_carousel.dart';
import 'onboarding_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Spacer(),
          OnboardingCarousel(),
          SizedBox(height: 32),
          OnboardingIndicator(),
          Spacer(),
          OnboardingBottomButtons(),
          SizedBox(height: 8)
        ],
      ),
    );
  }
}
