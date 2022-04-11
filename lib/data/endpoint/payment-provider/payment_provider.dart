import '../base/endpoint.dart';

class PaymentProviderEndpoint extends Endpoint {
  final PaymentProviderInput paymentProviderInput;

  PaymentProviderEndpoint({required this.paymentProviderInput});

  @override
  HttpMethod get httpMethod => HttpMethod.GET;

  @override
  String get route => "paymentProvider/getByCategory";

  @override
  Map<String, dynamic>? get queryParameters => paymentProviderInput.toJson();
}

class PaymentProviderInput {
  final int categoryId;


  PaymentProviderInput({
    required this.categoryId,
  });

  Map<String, dynamic> toJson() => {
    "categoryId": categoryId,

  };
}
