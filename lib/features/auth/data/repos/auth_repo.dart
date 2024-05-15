import 'package:dartz/dartz.dart';
import 'package:sphere_book/features/auth/data/models/auth_failure_model.dart';
import 'package:sphere_book/features/auth/data/models/auth_success_model.dart';

abstract class AuthRepo {
  Future<Either<AuthFailureModel, AuthSuccessModel>> userLogin(
      {required String email, required String password});

  Future<Either<AuthFailureModel, AuthSuccessModel>> userRegister(
      {required String email,
      required String password,
      required String rePassword,
      required String phoneNumber,
      required String name});
}
