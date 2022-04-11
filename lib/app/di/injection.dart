import 'package:get_it/get_it.dart';
import 'package:local_auth/local_auth.dart';

import '../../data/repository/auth_repository.dart';
import '../../data/repository/category_repository.dart';
import '../../data/repository/faq_repository.dart';
import '../../data/repository/intro_repository.dart';
import '../../data/repository/payment_provider_repository.dart';
import '../../data/repository/security_repository.dart';
import '../../data/service/api/api.dart';
import '../../presentation/manager/biometric_manager.dart';

final getIt = GetIt.instance;

class Injection {
  static register() {
    getIt.registerSingleton<ApiService>(ApiService());
    getIt.registerSingleton(LocalAuthentication());
    getIt.registerFactory(() => BiometricManager(getIt.get()));

    getIt.registerFactory<AuthRepository>(() => AuthRepositoryImpl(getIt.get()));
    getIt.registerFactory<FaqsRepository>(() => FaqRepositoryImpl(getIt.get()));
    getIt.registerFactory<IntroRepository>(() => IntroRepositoryImpl(getIt.get()));
    getIt.registerFactory<SecurityRepository>(() => SecurityRepositoryImpl(getIt.get()));
    getIt.registerFactory<CategoryRepository>(() => CategoryRepositoryImpl(getIt.get()));
    getIt.registerFactory<PaymentProviderRepository>(() => PaymentProviderRepositoryImpl(getIt.get()));
  }
}
