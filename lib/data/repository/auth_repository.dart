import '../endpoint/auth/token.dart';
import '../model/security/login_model.dart';
import '../service/api/api.dart';

abstract class AuthRepository {
  Future<LoginModel> token(TokenInput input);
}

class AuthRepositoryImpl implements AuthRepository {
  final ApiService apiService;

  AuthRepositoryImpl(this.apiService);

  @override
  Future<LoginModel> token(TokenInput input) async {
    return await apiService.task<LoginModel>(TokenEndpoint(tokenInput: input));
  }
}
