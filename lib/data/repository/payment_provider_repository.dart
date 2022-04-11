import '../endpoint/payment-provider/payment_provider.dart';
import '../model/payment-provider/payment_provider_model.dart';
import '../service/api/api.dart';

abstract class PaymentProviderRepository {
  Future<PaymentProviderModel> paymentProvider(PaymentProviderInput input);
}

class PaymentProviderRepositoryImpl implements PaymentProviderRepository {
  final ApiService apiService;

  PaymentProviderRepositoryImpl(this.apiService);

  @override
  Future<PaymentProviderModel> paymentProvider(PaymentProviderInput input) async {
    return await apiService.task<PaymentProviderModel>(PaymentProviderEndpoint(paymentProviderInput: input));
  }
}
