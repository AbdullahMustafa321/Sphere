class AuthFailureModel{
  final String message;
  final String statusMsg;

  AuthFailureModel({required this.message, required this.statusMsg});

  factory AuthFailureModel.fromJson(json){
    return AuthFailureModel(message: json['message'], statusMsg: json['statusMsg']);
  }
}