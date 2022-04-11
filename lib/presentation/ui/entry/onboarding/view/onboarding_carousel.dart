import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../components/carousel/page_carousel.dart';
import '../viewModel/onboarding_view_model.dart';

class OnboardingCarousel extends StatelessWidget {
  const OnboardingCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageCarousel(
      items: context.watch<OnboardingViewModel>().items,
      didChangePage: (index) => context.read<OnboardingViewModel>().select(index),
    );
  }
}
