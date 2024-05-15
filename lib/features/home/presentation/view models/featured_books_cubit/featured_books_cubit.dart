import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/home/data/repos/home_repo.dart';

import '../../../data/models/book_model/book_model.dart';


part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitialState());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks()async {
    emit(FeaturedBooksLoadingState());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure){
      emit(FeaturedBooksFailureState(failure.errMessage));
    }, (books) {
      emit(FeaturedBooksSuccessState(books));
    });
  }
}
