import 'package:dartz/dartz.dart';
import 'package:sphere_book/core/errors/failure.dart';
import 'package:sphere_book/features/auth/data/models/auth_success_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, AuthSuccessModel>> userLogin(
      {required String email, required String password});

  Future<Either<Failure, AuthSuccessModel>> userRegister(
      {required String email,
      required String password,
      required String rePassword,
      required String phoneNumber,
      required String name});
}
