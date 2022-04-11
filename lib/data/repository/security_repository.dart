import '../endpoint/security/change_password.dart';
import '../endpoint/security/login.dart';
import '../endpoint/security/registration.dart';
import '../endpoint/security/send_sms_code.dart';
import '../endpoint/security/verify_account.dart';
import '../endpoint/security/verify_sms_code.dart';
import '../model/security/login_model.dart';
import '../model/security/verify_sms_code_model.dart';
import '../service/api/api.dart';

abstract class SecurityRepository {
  Future<LoginModel> login(LoginInput input);
  Future<String> registration(RegistrationInput input);
  Future<String> sendSmsCode(SendSmsCodeInput input);
  Future<VerifySmsCodeModel> verifySmsCode(VerifySmsCodeInput input);
  Future<String> verifyAccount(VerifyAccountInput input);
  Future<String> changePassword(ChangePasswordInput input);
}

class SecurityRepositoryImpl implements SecurityRepository {
  final ApiService apiService;

  SecurityRepositoryImpl(this.apiService);

  @override
  Future<LoginModel> login(LoginInput input) async {
    return await apiService.task<LoginModel>(LoginEndpoint(loginInput: input));
  }

  @override
  Future<String> registration(RegistrationInput input) async {
    return await apiService.task<String>(RegistrationEndpoint(registrationInput: input));
  }

  @override
  Future<String> changePassword(ChangePasswordInput input) async {
    return await apiService.task<String>(ChangePasswordEndpoint(changePasswordInput: input));
  }

  @override
  Future<String> sendSmsCode(SendSmsCodeInput input) async {
    return await apiService.task<String>(SendSmsCodeEndpoint(sendSmsCodeInput: input));
  }

  @override
  Future<VerifySmsCodeModel> verifySmsCode(VerifySmsCodeInput input) async {
    return await apiService.task<VerifySmsCodeModel>(VerifySmsCodeEndpoint(verifySmsCodeInput: input));
  }

  @override
  Future<String> verifyAccount(VerifyAccountInput input) async {
    return await apiService.task<String>(VerifyAccountEndpoint(verifyAccountInput: input));
  }
}
