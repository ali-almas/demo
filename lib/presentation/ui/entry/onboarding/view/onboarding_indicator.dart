import 'package:flutter/material.dart';
import '../../../../components/indicator/page_indicator.dart';
import '../viewModel/onboarding_view_model.dart';
import 'package:provider/provider.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageIndicator(
      items: context.watch<OnboardingViewModel>().items,
    );
  }
}
