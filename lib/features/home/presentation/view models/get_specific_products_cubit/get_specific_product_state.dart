part of 'get_specific_product_cubit.dart';

@immutable
abstract class GetSpecificProductState {
}

final class GetSpecificProductInitialState extends GetSpecificProductState {}
final class GetSpecificProductsLoadingState extends GetSpecificProductState {}
final class GetSpecificProductsFailureState extends GetSpecificProductState {
  final String errorMessage;
   GetSpecificProductsFailureState(this.errorMessage);
}
final class GetSpecificProductsSuccessState extends GetSpecificProductState {
  final List<ProductModel> products;

   GetSpecificProductsSuccessState(this.products);
}

