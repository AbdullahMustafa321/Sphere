import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/home/data/repos/home_repo.dart';

import '../../../data/models/product_model.dart';

part 'get_specific_product_state.dart';

class GetSpecificProductCubit extends Cubit<GetSpecificProductState> {
  GetSpecificProductCubit(this.homeRepo) : super(GetSpecificProductInitialState());
  final HomeRepo homeRepo;
  Future<void> getSpecificCategoryProducts({required String categoryId})async {
    emit(GetSpecificProductsLoadingState());
    var result = await homeRepo.getSpecificCategoryProducts(categoryId: categoryId);
    result.fold((failure){
      emit(GetSpecificProductsFailureState(failure.errMessage));
    }, (products) {
      emit(GetSpecificProductsSuccessState(products));
    });
  }

}
