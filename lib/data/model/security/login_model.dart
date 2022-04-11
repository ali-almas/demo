class LoginModel {
  LoginModel({
    required this.accessToken,
    required this.mobile,
  });

  String accessToken;
  String mobile;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    accessToken: json["accessToken"],
    mobile: json["mobile"],
  );
}
