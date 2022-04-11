class VerifySmsCodeModel {
  VerifySmsCodeModel({
    required this.token,
  });

  String token;

  factory VerifySmsCodeModel.fromJson(Map<String, dynamic> json) => VerifySmsCodeModel(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
