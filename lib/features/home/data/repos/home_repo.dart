import 'package:dartz/dartz.dart';
import 'package:sphere_book/core/errors/failure.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookModel>>> fetchNewestBooks();
}