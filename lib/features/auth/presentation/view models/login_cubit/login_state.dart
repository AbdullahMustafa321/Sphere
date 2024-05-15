part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

final class LoginInitialState extends LoginState {}
final class LoginLoadingState extends LoginState {}
final class LoginFailureState extends LoginState {
  final AuthFailureModel authFailureModel;

  LoginFailureState(this.authFailureModel);
}
final class LoginSuccessState extends LoginState {
  final AuthSuccessModel authSuccessModel;

  LoginSuccessState(this.authSuccessModel);
}
