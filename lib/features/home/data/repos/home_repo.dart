import 'package:dartz/dartz.dart';
import 'package:sphere_book/core/errors/failure.dart';
import 'package:sphere_book/features/home/data/models/categories_model.dart';
import 'package:sphere_book/features/home/data/models/product_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<ProductModel>>> getAllProducts();
  Future<Either<Failure,List<CategoryModel>>> getAllCategories();
}