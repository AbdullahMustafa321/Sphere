import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:sphere_book/core/errors/failure.dart';
import 'package:sphere_book/core/utils/api_services.dart';
import 'package:sphere_book/features/home/data/models/categories_model.dart';


import '../models/product_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<CategoryModel>>> getAllCategories() async {
    try {
      var data = await apiServices.get('categories');
      List<CategoryModel> categories = [];
      for (var item in data['data']) {
        categories.add(CategoryModel.fromJson(item));
      }
      print(categories);
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
          .get('products');
      List<ProductModel> product = [];
      for (var item in data['data']) {
        product.add(ProductModel.fromJson(item));
      }
      return right(product);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
