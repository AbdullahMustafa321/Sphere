import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/home/data/models/product_model.dart';
import 'package:sphere_book/features/home/data/repos/home_repo.dart';



part 'get_all_products_state.dart';

class GetAllProductsCubit extends Cubit<GetAllProductsState> {
  GetAllProductsCubit(this.homeRepo) : super(GetAllProductsInitialState());
  final HomeRepo homeRepo;
  Future<void> getAllProduct()async {
    emit(GetAllProductsLoadingState());
    var result = await homeRepo.getAllProducts();
    result.fold((failure){
      emit(GetAllProductsFailureState(failure.errMessage));
    }, (products) {
      emit(GetAllProductsSuccessState(products));
    });
  }

}
