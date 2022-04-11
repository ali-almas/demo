import 'package:bloc/bloc.dart';

import '../../../../../app/generic/generic_state.dart';
import '../../../../../data/service/preferences/preference.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<GenericState> {
  OnboardingCubit() : super(Initial());

  skip() async {
    emit(InProgress());
    final prefs = await PreferencesService.instance;
    await prefs.setOnBoardingPassed(true);
    emit(SkipOnboarding());
  }
}
