import 'package:dio/dio.dart';

class ApiServices {
  final String _baseUrl='https://ecommerce.routemisr.com/api/v1/';
  final Dio _dio;

  ApiServices( this._dio);

  Future<Map<String,dynamic>> get({required String endpoints, String token=''})async{
    _dio.options.headers['token']= token;
    Response response = await _dio.get('$_baseUrl$endpoints');
    return response.data;
  }
  Future<Map<String,dynamic>> post({required String endpoints, dynamic data, String token = ''})async{
    _dio.options.headers['token']= token;
    Response response = await _dio.post('$_baseUrl$endpoints',data: data);
    return response.data;
  }
  Future<Map<String,dynamic>> put({required String productId,required String endpoints, dynamic data, String token = ''})async{
    _dio.options.headers['token']= token;
    Response response = await _dio.put('$_baseUrl$endpoints/$productId',data: data);
    return response.data;
  }
  Future<Map<String,dynamic>> delete({required String productId,required String endpoints, String token = ''})async{
    _dio.options.headers['token']= token;
    Response response = await _dio.delete('$_baseUrl$endpoints/$productId');
    return response.data;
  }
  //--------------------------Stripe-----------------------
  Future<Response> stripePost({required String url, required body, required String token ,String? contentType})async{
    Response response = await _dio.post('$_baseUrl$url',data: body,options: Options(
        contentType: contentType,
        headers: {'Authorization':'Bearer $token'}
    ));
    return response;
  }
}
