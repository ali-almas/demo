import 'package:bloc/bloc.dart';

import '../../../../../app/di/injection.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../../data/endpoint/security/change_password.dart';
import '../../../../../data/exception/error.dart';
import '../../../../../data/repository/security_repository.dart';

class ChangePasswordCubit extends Cubit<GenericState> {
  ChangePasswordCubit() : super(Initial());

  final _securityRepository = getIt.get<SecurityRepository>();

  setPassword(ChangePasswordInput input) async {
    emit(InProgress());
    try {
      await _securityRepository.changePassword(input);
      emit(Success());
    } on HttpException catch (e) {
      emit(Failure(e.error));
    }
  }
}
