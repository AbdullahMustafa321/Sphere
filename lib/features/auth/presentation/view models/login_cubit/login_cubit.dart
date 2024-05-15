import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/auth/data/models/auth_failure_model.dart';
import 'package:sphere_book/features/auth/data/models/auth_success_model.dart';
import 'package:sphere_book/features/auth/data/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.authRepo) : super(LoginInitialState());
  final AuthRepo authRepo;
  Future<void> login({required String email, required String password})async{
    emit(LoginLoadingState());
    var result =await authRepo.userLogin(email: email, password: password);
    return result.fold((fail) {
      emit(LoginFailureState(fail));
    }, (success) {
      emit(LoginSuccessState(success));
    });
  }
}
