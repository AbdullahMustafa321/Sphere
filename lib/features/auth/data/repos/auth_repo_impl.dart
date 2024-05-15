import 'package:dartz/dartz.dart';
import 'package:sphere_book/core/utils/api_services.dart';
import 'package:sphere_book/features/auth/data/models/auth_failure_model.dart';
import 'package:sphere_book/features/auth/data/models/auth_success_model.dart';
import 'package:sphere_book/features/auth/data/repos/auth_repo.dart';

class AuthRepoImpl implements AuthRepo{
  ApiServices apiServices;

  AuthRepoImpl(this.apiServices);


  @override
  Future<Either<AuthFailureModel, AuthSuccessModel>> userRegister({required String email,
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
      var respose = await apiServices.post('auth/signin', data);
      successModel=AuthSuccessModel.fronJson(respose);
      return right(successModel);
    } catch (e) {
      AuthFailureModel authFailureModel;
      var respose = await apiServices.post('auth/signin', data);
      authFailureModel = AuthFailureModel.fromJson(respose);
      return left(authFailureModel);
    }
  }

  @override
  Future<Either<AuthFailureModel, AuthSuccessModel>> userLogin({required String email, required String password})async {
    Map<String, dynamic> data = {
      'email': email,
      'password': password,
    };
    try {
      AuthSuccessModel successModel;
      var respose = await apiServices.post('auth/signin', data);
      successModel=AuthSuccessModel.fronJson(respose);
      return right(successModel);
    } catch (e) {
      AuthFailureModel authFailureModel;
      var respose = await apiServices.post('auth/signin', data);
      authFailureModel = AuthFailureModel.fromJson(respose);
      return left(authFailureModel);
    }
  }
  }

