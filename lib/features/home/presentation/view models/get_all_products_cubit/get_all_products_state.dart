part of 'get_all_products_cubit.dart';

@immutable
abstract class GetAllProductsState {
  const GetAllProductsState();
}

final class GetAllProductsInitialState extends GetAllProductsState {}
final class GetAllProductsLoadingState extends GetAllProductsState {}
final class GetAllProductsFailureState extends GetAllProductsState {
  final String errorMessage;
  const GetAllProductsFailureState(this.errorMessage);
}
final class GetAllProductsSuccessState extends GetAllProductsState {
  final List<ProductModel> products;

 const GetAllProductsSuccessState(this.products);
}

