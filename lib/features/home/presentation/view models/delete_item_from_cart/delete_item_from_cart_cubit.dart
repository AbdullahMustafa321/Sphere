import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/home/data/repos/home_repo.dart';

part 'delete_item_from_cart_state.dart';

class DeleteItemFromCartCubit extends Cubit<DeleteItemFromCartState> {
  DeleteItemFromCartCubit(this.homeRepo) : super(DeleteItemFromCartInitialState());
  final HomeRepo homeRepo;
  Future<void> deleteItemFromCart({required String token,required String productId,})async{
    emit(DeleteItemFromCartLoadingState());
    var result =await homeRepo.deleteItemFromCart(token: token, productId: productId);
    return result.fold((failure) {
      emit(DeleteItemFromCartFailureState(failure.errMessage));
    }, (success) {
      emit(DeleteItemFromCartSuccessState(success));
    });
  }
}
