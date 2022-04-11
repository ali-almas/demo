import '../base/endpoint.dart';

class LoginEndpoint extends Endpoint {
  final LoginInput loginInput;

  LoginEndpoint({required this.loginInput});

  @override
  HttpMethod get httpMethod => HttpMethod.POST;

  @override
  String get route => "security/login";

  @override
  Map<String, dynamic>? get body => loginInput.toJson();
}

class LoginInput {
  final String mobile;
  final String password;
  final String fcmToken;

  LoginInput({
    required this.mobile,
    required this.password,
    required this.fcmToken,
  });

  Map<String, dynamic> toJson() => {
    "mobile": mobile,
    "password": password,
    "fcm_token" :fcmToken,
  };
}
