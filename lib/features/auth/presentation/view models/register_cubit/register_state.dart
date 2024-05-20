part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitialState extends RegisterState {}
final class RegisterLoadingState extends RegisterState {}
final class RegisterFailureState extends RegisterState {
  final String errorMessage;

  RegisterFailureState(this.errorMessage);
}
final class RegisterSuccessState extends RegisterState {
  final String successMessage;

  RegisterSuccessState(this.successMessage);
}