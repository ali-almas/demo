import '../endpoint/intro/intro.dart';
import '../model/intro/intro_model.dart';
import '../service/api/api.dart';

abstract class IntroRepository {
  Future<IntroModel> intro();
}

class IntroRepositoryImpl implements IntroRepository {
  final ApiService apiService;

  IntroRepositoryImpl(this.apiService);

  @override
  Future<IntroModel> intro() async {
    return await apiService.task<IntroModel>(IntroEndpoint());
  }
}
