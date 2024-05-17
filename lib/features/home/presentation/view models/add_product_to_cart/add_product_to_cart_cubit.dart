import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/home/data/repos/home_repo.dart';

part 'add_product_to_cart_state.dart';

class AddProductToCartCubit extends Cubit<AddProductToCartState> {
  AddProductToCartCubit(this.homeRepo) : super(AddProductToCartInitialState());
  final HomeRepo homeRepo;
  Future<void> addProductToCart({required String token,required String id})async {
    emit(AddProductToCartLoadingState());
    var result = await homeRepo.addProductToCart(token: token, id: id);

    return result.fold((failure) {
      emit(AddProductToCartFailureState(failure.errMessage));
    }, (success) {
      emit(AddProductToCartSuccessState(success));
    });
  }
}
