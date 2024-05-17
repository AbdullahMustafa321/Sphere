import 'package:dartz/dartz.dart';
import 'package:sphere_book/core/errors/failure.dart';
import 'package:sphere_book/features/home/data/models/categories_model.dart';
import 'package:sphere_book/features/home/data/models/product_model.dart';

import '../models/cart_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<ProductModel>>> getAllProducts();
  Future<Either<Failure,List<ProductModel>>> getSpecificCategoryProducts({required String categoryId});
  Future<Either<Failure,List<CategoryModel>>> getAllCategories();
  Future<Either<Failure,List<CartModel>>> getUserCart({required String token});
  Future <Either<Failure,String>>addProductToCart({required String token,required String id});
  Future <Either<Failure,String>>incrementProduct({required String token,required String productId,required int count});
  Future <Either<Failure,String>>decrementProduct({required String token,required String productId,required int count});
  Future <Either<Failure,String>>deleteItemFromCart({required String token,required String productId});

}