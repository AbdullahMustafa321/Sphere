part of 'get_user_cart_cubit.dart';

@immutable
abstract class GetUserCartState {
  const GetUserCartState();
}

final class GetUserCartInitialState extends GetUserCartState {}
final class GetUserCartLoadingState extends GetUserCartState {}
final class GetUserCartFailureState extends GetUserCartState {
  final String errorMessage;
  const GetUserCartFailureState(this.errorMessage);
}
final class GetUserCartSuccessState extends GetUserCartState {
  final List<CartModel> products;

  const GetUserCartSuccessState(this.products);
}


