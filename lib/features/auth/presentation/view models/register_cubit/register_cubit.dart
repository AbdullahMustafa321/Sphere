import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

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
      name: name,
      email: email,
      password: password,
      rePassword: rePassword,
      phoneNumber: phoneNumber,
    );
    return result.fold((failure) {
      emit(RegisterFailureState(failure.errMessage));
    }, (success) {
      emit(RegisterSuccessState(success));
    });
  }
}
