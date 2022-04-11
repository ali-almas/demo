import '../base/endpoint.dart';

class VerifyAccountEndpoint extends Endpoint {
  final VerifyAccountInput verifyAccountInput;

  VerifyAccountEndpoint({required this.verifyAccountInput});

  @override
  HttpMethod get httpMethod => HttpMethod.POST;
  @override
  String get route => "security/verifyAccount";

  @override
  Map<String, dynamic>? get body => verifyAccountInput.toJson();
}

class VerifyAccountInput {
  final String token;

  VerifyAccountInput({
    required this.token,
  });

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
