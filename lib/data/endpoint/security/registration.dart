import '../base/endpoint.dart';

class RegistrationEndpoint extends Endpoint {
  final RegistrationInput registrationInput;

  RegistrationEndpoint({required this.registrationInput});

  @override
  HttpMethod get httpMethod => HttpMethod.POST;

  @override
  String get route => "security/registration";

  @override
  Map<String, dynamic>? get body => registrationInput.toJson();
}

class RegistrationInput {
  final String mobile;
  final String password;
  final String matchingPassword;

  RegistrationInput({
    required this.mobile,
    required this.password,
    required this.matchingPassword,
  });

  Map<String, dynamic> toJson() => {
        "matchingPassword": matchingPassword,
        "mobile": mobile,
        "password": password,
      };
}
