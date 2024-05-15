part of 'get_all_categories_cubit.dart';

@immutable
abstract class GetAllCategoriesState {
  const GetAllCategoriesState();
}

final class GetAllCategoriesInitialState extends GetAllCategoriesState {}
final class GetAllCategoriesLoadingState extends GetAllCategoriesState {}
final class GetAllCategoriesFailureState extends GetAllCategoriesState {
  final String errorMessage;
  const GetAllCategoriesFailureState(this.errorMessage);
}
final class GetAllCategoriesSuccessState extends GetAllCategoriesState {
  final List<CategoryModel> category;
  const GetAllCategoriesSuccessState(this.category);
}
