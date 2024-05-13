import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

abstract class Failure{
  final String errMessage;

  Failure(this.errMessage);
}
class SereverFailure extends Failure{
  SereverFailure(super.errMessage);

  factory SereverFailure.fromDioException(DioException dioException){
    switch (dioException.type){

      case DioExceptionType.connectionTimeout:
        return SereverFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return SereverFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return SereverFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return SereverFailure('BadCertificate timeout with ApiServer');
      case DioExceptionType.badResponse:
        return SereverFailure.fromResponse(dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
      return SereverFailure('Cancel timeout with ApiServer');
      case DioExceptionType.connectionError:
        return SereverFailure('connectionError');
      case DioExceptionType.unknown:
        if(dioException.message!.contains('SocketException')){
          return SereverFailure('No internet Connection');
        }else{
          return SereverFailure('Unexpected error, Please try again later.');
        }
      default:
        return SereverFailure('Opss There was an error, please try again later');
    }
  }
  factory SereverFailure.fromResponse(int? statusCode , dynamic response){
    if(statusCode== 400||statusCode== 401||statusCode== 403 ){
      return SereverFailure(response['error']['message']);
    }else if(statusCode==404){
      return SereverFailure('Not Found');
    }else if(statusCode==500){
      return SereverFailure('Internal Server Error');
    }else{
      return SereverFailure('Opss There was an error, please try again later');
    }
  }
}