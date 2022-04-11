import 'package:bloc/bloc.dart';

import '../../../../../app/di/injection.dart';
import '../../../../../app/generic/generic_state.dart';
import '../../../../../data/endpoint/security/verify_account.dart';
import '../../../../../data/endpoint/security/verify_sms_code.dart';
import '../../../../../data/exception/error.dart';
import '../../../../../data/repository/security_repository.dart';
import '../../../../../data/service/preferences/preference.dart';
import '../../../../route/route_name.dart';
import '../viewmodel/code_confirmation_view_model.dart';

class CodeConfirmationCubit extends Cubit<GenericState> {
  final PreviousPage previousPage;

  CodeConfirmationCubit(this.previousPage) : super(Initial());

  final _securityRepository = getIt.get<SecurityRepository>();

  // TODO: WILL LOOK
  // resendSmsCode() async {
  //   final prefs = await PreferencesService.instance;
  //   try {
  //     final sendSmsCodeInput = SendSmsCodeInput(mobile: prefs.mobile);
  //     await _securityRepository.sendSmsCode(sendSmsCodeInput);
  //   } on HttpException catch (e) {
  //     emit(
  //       Failure(e.error),
  //     );
  //   }
  // }

  verifySmsCode(String otpCode) async {
    final prefs = await PreferencesService.instance;
    try {
      emit(InProgress());
      final verifySmsCodeInput = VerifySmsCodeInput(otpCode: otpCode, mobile: prefs.mobile);
      final response = await _securityRepository.verifySmsCode(verifySmsCodeInput);

      if (previousPage == PreviousPage.registration) {
        await verifyAccount(response.token);
        emit(Success(value: const [RouteName.loginPage, null]));
      } else if (previousPage == PreviousPage.resetPassword) {
        emit(Success(value: [RouteName.changePasswordPage, response.token]));
      }
    } on HttpException catch (e) {
      emit(Failure(e.error));
    }
  }

  verifyAccount(String confirmationToken) async {
    try {
      final verifyAccountInput = VerifyAccountInput(token: confirmationToken);
      await _securityRepository.verifyAccount(verifyAccountInput);
    } on HttpException catch (e) {
      emit(Failure(e.error));
    }
  }
}
