import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/repos/home_repo.dart';

part 'change_count_state.dart';

class ChangeCountCubit extends Cubit<ChangeCountState> {
  ChangeCountCubit(this.homeRepo) : super(ChangeCountInitialState());
  final HomeRepo homeRepo;
  Future<void> incrementProduct({required String token,required String productId,required int count})async {
    emit(ChangeCountLoadingState());
    var result = await homeRepo.incrementProduct(token: token, productId: productId, count: count);

    return result.fold((failure) {
      emit(ChangeCountFailureState(failure.errMessage));
    }, (success) {
      emit(ChangeCountSuccessState(success));
    });
  }
  Future<void> decrementProduct({required String token,required String productId,required int count})async {

    emit(ChangeCountLoadingState());
    var result = await homeRepo.decrementProduct(token: token, productId: productId, count: count);

    return result.fold((failure) {
      emit(ChangeCountFailureState(failure.errMessage));
    }, (success) {
      emit(ChangeCountSuccessState(success));
    });
  }

}
