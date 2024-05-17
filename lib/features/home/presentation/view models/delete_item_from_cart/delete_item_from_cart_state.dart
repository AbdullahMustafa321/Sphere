part of 'delete_item_from_cart_cubit.dart';

@immutable
sealed class DeleteItemFromCartState {}

final class DeleteItemFromCartInitialState extends DeleteItemFromCartState {}
final class DeleteItemFromCartLoadingState extends DeleteItemFromCartState {}
final class DeleteItemFromCartFailureState extends DeleteItemFromCartState {
  final String errorMessage;

  DeleteItemFromCartFailureState(this.errorMessage);
}
final class DeleteItemFromCartSuccessState extends DeleteItemFromCartState {
  final String successMessage;

  DeleteItemFromCartSuccessState(this.successMessage);
}
