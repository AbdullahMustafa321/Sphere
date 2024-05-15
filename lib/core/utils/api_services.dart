import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl='https://ecommerce.routemisr.com/api/v1/';
  final Dio _dio;

  ApiServices( this._dio);

  Future<Map<String,dynamic>> get(String endpoints)async{
    Response response = await _dio.get('$_baseUrl$endpoints');
    return response.data;
  }
  Future<Map<String,dynamic>> post(String endpoints,dynamic data)async{
    Response response = await _dio.post('$_baseUrl$endpoints',data: data);
    return response.data;
  }
}