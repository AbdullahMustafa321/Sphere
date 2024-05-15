class AuthSuccessModel{
  final String message;
  final String token;

  AuthSuccessModel({required this.message, required this.token});
  factory AuthSuccessModel.fronJson(json){
    return AuthSuccessModel(message: json['message'], token: json['token']);
  }
}