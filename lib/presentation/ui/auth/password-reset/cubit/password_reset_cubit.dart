import 'package:bloc/bloc.dart';

import '../../../../../app/di/injection.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../../data/endpoint/security/send_sms_code.dart';
import '../../../../../data/exception/error.dart';
import '../../../../../data/repository/security_repository.dart';

class PasswordResetCubit extends Cubit<GenericState> {
  PasswordResetCubit() : super(Initial());

  final _securityRepository = getIt.get<SecurityRepository>();

  reset(SendSmsCodeInput input) async {
    emit(InProgress());
    try {
      await _securityRepository.sendSmsCode(input);
      emit(Success());
    } on HttpException catch (e) {
      emit(Failure(e.error));
    }
  }
}
