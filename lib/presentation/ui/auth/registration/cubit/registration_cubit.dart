import 'package:bloc/bloc.dart';

import '../../../../../app/di/injection.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../../data/endpoint/security/registration.dart';
import '../../../../../data/exception/error.dart';
import '../../../../../data/repository/security_repository.dart';

class RegistrationCubit extends Cubit<GenericState> {
  RegistrationCubit() : super(Initial());

  final _securityRepository = getIt.get<SecurityRepository>();

  register(RegistrationInput input) async {
    emit(InProgress());
    try {
      await _securityRepository.registration(input);
      emit(Success());
    } on HttpException catch (e) {
      emit(Failure(e.error));
    }
  }
}
