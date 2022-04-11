import 'package:bloc/bloc.dart';

import '../../../../../app/di/injection.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../../data/endpoint/security/login.dart';
import '../../../../../data/exception/error.dart';
import '../../../../../data/repository/security_repository.dart';
import '../../../../../data/service/preferences/preference.dart';

class LoginCubit extends Cubit<GenericState> {
  LoginCubit() : super(Initial());

  final _securityRepository = getIt.get<SecurityRepository>();

  login(LoginInput input) async {
    emit(InProgress());
    try {
      final prefs = await PreferencesService.instance;
      final response = await _securityRepository.login(input);
      await prefs.setAccessToken(response.accessToken);
      await prefs.setMobile(input.mobile);
      await prefs.setAuthorizationPassed(true);
      await prefs.setEntranceState(true);
      emit(Success());
    } on HttpException catch (e) {
      emit(Failure(e.error));
    }
  }
}
