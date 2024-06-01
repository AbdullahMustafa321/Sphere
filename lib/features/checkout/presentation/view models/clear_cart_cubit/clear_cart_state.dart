part of 'clear_cart_cubit.dart';

@immutable
sealed class ClearCartState {}

final class ClearCartInitialState extends ClearCartState {}
final class ClearLoadingState extends ClearCartState {}
final class ClearFailureState extends ClearCartState {
  final String errorMessage;

  ClearFailureState(this.errorMessage);
}
final class ClearSuccessState extends ClearCartState {
  final String successMessage;

  ClearSuccessState(this.successMessage);
}
