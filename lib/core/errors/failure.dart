import 'package:dio/dio.dart';

abstract class Failure{
  final String errMessage;

 const Failure(this.errMessage);
}
class ServerFailure extends Failure{
  const ServerFailure(super.errMessage);

  factory ServerFailure.fromDioException(DioException dioException){
    switch (dioException.type){

      case DioExceptionType.connectionTimeout:
        return const ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return const ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return const ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return const ServerFailure('BadCertificate timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
      return const ServerFailure('Cancel timeout with ApiServer');
      case DioExceptionType.connectionError:
        return const ServerFailure('connectionError');
      case DioExceptionType.unknown:
        if(dioException.message!.contains('SocketException')){
          return const ServerFailure('No internet Connection');
        }else{
          return const ServerFailure('Unexpected error, Please try again later.');
        }
      default:
        return const ServerFailure('Opss There was an error, please try again later');
    }
  }
  factory ServerFailure.fromResponse(int? statusCode , dynamic response){
    if(statusCode== 400||statusCode== 401||statusCode== 403 ){
      return ServerFailure(response['error']['message']);
    }else if(statusCode==404){
      return const ServerFailure('Not Found');
    }else if(statusCode==500){
      return const ServerFailure('Internal Server Error');
    }else{
      return const ServerFailure('Opss There was an error, please try again later');
    }
  }
}