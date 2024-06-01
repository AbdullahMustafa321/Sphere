import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/checkout/data/repo/checkout_repo.dart';

part 'clear_cart_state.dart';

class ClearCartCubit extends Cubit<ClearCartState> {
  ClearCartCubit(this.checkoutRepo) : super(ClearCartInitialState());
  CheckoutRepo checkoutRepo;
  Future<void> clearCart({required String token})async{
    emit(ClearLoadingState());
    var result =await checkoutRepo.clearCart(token: token);
    return result.fold((failure) {
      emit(ClearFailureState(failure.errMessage));
    }, (success) {
      emit(ClearSuccessState(success));
    });
  }
}
