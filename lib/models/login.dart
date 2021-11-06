class LoginResponseModel {
  String? error;
  String? token;

  LoginResponseModel({this.error, this.token});
  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return LoginResponseModel(error: json['error'], token: json['token']);
  }
}

class LoginRequestModel {
  String? email;
  String? password;

  LoginRequestModel({this.email, this.password});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'email': email,
      'password': password,
    };
    return map;
  }
}
