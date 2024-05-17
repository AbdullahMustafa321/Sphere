import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/home/data/models/cart_model.dart';
import 'package:sphere_book/features/home/data/repos/home_repo.dart';

part 'get_user_cart_state.dart';

class GetUserCartCubit extends Cubit<GetUserCartState> {
  GetUserCartCubit(this.homeRepo) : super(GetUserCartInitialState());
  final HomeRepo homeRepo;
  Future<void> getUserCart({required String token})async {
    emit(GetUserCartLoadingState());
    var result = await homeRepo.getUserCart(token: token);
    result.fold((failure){
      emit(GetUserCartFailureState(failure.errMessage));
    }, (products) {
      emit(GetUserCartSuccessState(products));
    });
  }
}
