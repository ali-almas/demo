import '../base/endpoint.dart';

class SendSmsCodeEndpoint extends Endpoint {
  final SendSmsCodeInput sendSmsCodeInput;

  SendSmsCodeEndpoint({required this.sendSmsCodeInput});

  @override
  HttpMethod get httpMethod => HttpMethod.POST;

  @override
  String get route => "security/sendSmsCode";

  @override
  Map<String, dynamic>? get body => sendSmsCodeInput.toJson();
}

class SendSmsCodeInput {
  final String mobile;

  SendSmsCodeInput({required this.mobile});

  Map<String, dynamic> toJson() => {
        "mobile": mobile,
      };
}
