import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sphere_book/core/constant/constant.dart';
import 'package:sphere_book/core/errors/failure.dart';
import 'package:sphere_book/core/utils/api_services.dart';
import 'package:sphere_book/features/auth/data/models/auth_success_model.dart';
import 'package:sphere_book/features/auth/data/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  ApiServices apiServices;

  AuthRepoImpl(this.apiServices);


  @override
  Future<Either<Failure, AuthSuccessModel>> userRegister({required String email,
    required String password,
    required String rePassword,
    required String phoneNumber,
    required String name}) async {
    Map<String, dynamic> data = {
      "name": name,
      "email":email,
      "password":password,
      "rePassword":rePassword,
      "phone":phoneNumber
    };
    try {
      AuthSuccessModel successModel;
      var response = await apiServices.post(endpoints: 'auth/signup', data: data);
      successModel=AuthSuccessModel.fromJson(response);
      return right(successModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, AuthSuccessModel>> userLogin({required String email, required String password})async {
    Map<String, dynamic> data = {
      'email': email,
      'password': password,
    };
    try {
      AuthSuccessModel successModel;
      var response = await apiServices.post(endpoints: 'auth/signin', data:data);
      successModel=AuthSuccessModel.fromJson(response);
      kToken = successModel.token;
      return right(successModel);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
  }

