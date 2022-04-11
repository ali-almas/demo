import '../base/endpoint.dart';

class VerifySmsCodeEndpoint extends Endpoint {
  final VerifySmsCodeInput verifySmsCodeInput;

  VerifySmsCodeEndpoint({required this.verifySmsCodeInput});

  @override
  HttpMethod get httpMethod => HttpMethod.POST;
  @override
  String get route => "security/verifySmsCode";

  @override
  Map<String, dynamic>? get body => verifySmsCodeInput.toJson();
}

class VerifySmsCodeInput {
  final String mobile;
  final String otpCode;

  VerifySmsCodeInput({
    required this.mobile,
    required this.otpCode,
  });

  Map<String, dynamic> toJson() => {
        "mobile": mobile,
        "otpCode": otpCode,
      };
}
