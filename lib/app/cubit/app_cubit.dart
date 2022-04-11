import 'package:bloc/bloc.dart';

import '../../data/service/preferences/preference.dart';
import '../../presentation/ui/main/main/viewmodel/main_view_model.dart';
import '../generic/generic_state.dart';

part 'app_state.dart';

class AppCubit extends Cubit<GenericState> {
  AppCubit() : super(Initial());

  check() async {
    final prefs = await PreferencesService.instance;

    if (prefs.wasOnBoardingPassed) {
      if (prefs.wasAuthorizationPassed) {
        if (prefs.entranceState == EntranceState.registered) {
          emit(Pin());
        } else {
          emit(Authorized(prefs.entranceState));
        }
      } else {
        emit(Unauthorized());
      }
    } else {
      emit(Onboarding());
    }
  }
}
