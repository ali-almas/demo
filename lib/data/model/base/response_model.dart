import '../category/category_model.dart';
import '../faq/faqs_model.dart';
import '../intro/intro_model.dart';
import '../payment-provider/payment_provider_model.dart';
import '../security/login_model.dart';
import '../security/verify_sms_code_model.dart';

class ResponseModel<T> {
  ResponseModel({
    required this.code,
    required this.message,
    required this.response,
  });

  int code;
  String message;
  T? response;

  factory ResponseModel.fromJson(Map<String, dynamic> json) {
    T? getData(Map<String, dynamic>? data) {
      if (data == null) return null;
      switch (T) {
        case LoginModel:
          return LoginModel.fromJson(data) as T;
        case FaqsModel:
          return FaqsModel.fromJson(data) as T;
        case IntroModel:
          return IntroModel.fromJson(data) as T;
        case CategoryModel:
          return CategoryModel.fromJson(data) as T;
        case PaymentProviderModel:
          return PaymentProviderModel.fromJson(data) as T;
        case VerifySmsCodeModel:
          return VerifySmsCodeModel.fromJson(data) as T;
        default:
          return null;
      }
    }

    return ResponseModel(
      code: json["code"],
      message: json["message"],
      response: getData(json["response"]),
    );
  }

  bool get isSuccessful {
    return [200, 201, 203, 204].contains(code);
  }

  bool get hasData {
    return response != null;
  }
}
