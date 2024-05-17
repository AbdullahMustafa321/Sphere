import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sphere_book/core/constant/constant.dart';

import 'package:sphere_book/core/errors/failure.dart';
import 'package:sphere_book/core/utils/api_services.dart';
import 'package:sphere_book/features/home/data/models/categories_model.dart';


import '../models/cart_model.dart';
import '../models/product_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<CategoryModel>>> getAllCategories() async {
    try {
      var data = await apiServices.get(endpoints: 'categories');
      List<CategoryModel> categories = [];
      for (var item in data['data']) {
        categories.add(CategoryModel.fromJson(item));
      }
      return right(categories);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
    Future<Either<Failure, List<ProductModel>>> getAllProducts() async {
    try {
      var data = await apiServices
          .get(endpoints: 'products');
      List<ProductModel> products = [];
      for (var item in data['data']) {
        products.add(ProductModel.fromJson(item));
      }
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> getSpecificCategoryProducts({required String categoryId}) async{
    try {
      var data = await apiServices
          .get(endpoints: 'products/?category=$categoryId');
      List<ProductModel> products = [];
      for (var item in data['data']) {
        products.add(ProductModel.fromJson(item));
      }
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<CartModel>>> getUserCart({required String token}) async{
    try {
      var data = await apiServices.get(endpoints: 'cart',token: token);
      kTotalPrice = data['data']['totalCartPrice'];
      List<CartModel> products = [];
      for (var product in data['data']['products']){
        products.add(CartModel.fromJson(product));
      }
      return right(products);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }

  }

  @override
  Future<Either<Failure,String>> addProductToCart({required String token,required String id}) async{
    Map<String, dynamic> data = {
      'productId': id,
    };
    try{
       await apiServices.post(endpoints: 'cart', data: data,token: token);
      return right('Success!');
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, String>> decrementProduct({required String token, required String productId,required int count}) async{
    Map<String, dynamic> data = {
      'count': '${count-1}',
    };
    try{
      await apiServices.put(endpoints: 'cart', data: data,token: token, productId: productId);
      return right('Success!');
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, String>> incrementProduct({required String token, required String productId,required int count})async {
    Map<String, dynamic> data = {
      'count': '${count+1}',
    };
    try{
      await apiServices.put(endpoints: 'cart', data: data,token: token, productId: productId);
      return right('Success!');
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
    Future<Either<Failure, String>> deleteItemFromCart({required String token, required String productId}) async{
    try {
      await apiServices.delete(productId: productId, endpoints: 'cart',token: token);
      return right('success');
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }


}
