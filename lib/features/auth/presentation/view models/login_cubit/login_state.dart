part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

final class LoginInitialState extends LoginState {}
final class LoginLoadingState extends LoginState {}
final class LoginFailureState extends LoginState {
  final String errorMessage;

  LoginFailureState(this.errorMessage);
}
final class LoginSuccessState extends LoginState {
  final AuthSuccessModel authSuccessModel;

  LoginSuccessState(this.authSuccessModel);
}
