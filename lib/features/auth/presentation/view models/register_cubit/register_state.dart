part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitialState extends RegisterState {}
final class RegisterLoadingState extends RegisterState {}
final class RegisterFailureState extends RegisterState {
  final AuthFailureModel authFailureModel;

  RegisterFailureState(this.authFailureModel);
}
final class RegisterSuccessState extends RegisterState {
  final AuthSuccessModel authSuccessModel;

  RegisterSuccessState(this.authSuccessModel);
}