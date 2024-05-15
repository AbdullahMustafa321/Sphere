import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/auth_failure_model.dart';
import '../../../data/models/auth_success_model.dart';
import '../../../data/repos/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.authRepo) : super(RegisterInitialState());
  final AuthRepo authRepo;

  Future<void> Register(
      {required String email,
      required String password,
      required String rePassword,
      required String phoneNumber,
      required String name}) async {
    emit(RegisterLoadingState());
    var result = await authRepo.userRegister(
        email: email,
        password: password,
        phoneNumber: phoneNumber,
        rePassword: rePassword,
        name: name);
    return result.fold((fail) {
      emit(RegisterFailureState(fail));
      print(fail);
    }, (success) {
      emit(RegisterSuccessState(success));
      print(success);
    });
  }
}
