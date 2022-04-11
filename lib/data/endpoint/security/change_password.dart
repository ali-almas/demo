import '../base/endpoint.dart';

class ChangePasswordEndpoint extends Endpoint {
  final ChangePasswordInput changePasswordInput;

  ChangePasswordEndpoint({required this.changePasswordInput});

  @override
  HttpMethod get httpMethod => HttpMethod.POST;

  @override
  String get route => "security/changePassword";

  @override
  Map<String, dynamic>? get body => changePasswordInput.toJson();
}

class ChangePasswordInput {
  final String confirmationToken;
  final String password;
  final String matchingPassword;

  ChangePasswordInput({
    required this.confirmationToken,
    required this.password,
    required this.matchingPassword,
  });

  Map<String, dynamic> toJson() => {
    "confirmationToken": confirmationToken,
    "password": password,
    "matchingPassword" :matchingPassword,
  };
}
