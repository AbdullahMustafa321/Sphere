part of 'add_product_to_cart_cubit.dart';

@immutable
abstract class AddProductToCartState {
}

final class AddProductToCartInitialState extends AddProductToCartState {}
final class AddProductToCartFailureState extends AddProductToCartState {
  final String errorMessage;

  AddProductToCartFailureState(this.errorMessage);
}
final class AddProductToCartLoadingState extends AddProductToCartState {}
final class AddProductToCartSuccessState extends AddProductToCartState {
  final String successMessage;

  AddProductToCartSuccessState(this.successMessage);
}
