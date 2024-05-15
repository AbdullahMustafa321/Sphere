import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/home/data/repos/home_repo.dart';

import '../../../data/models/book_model/book_model.dart';


part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitialState());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBook()async{
    emit(NewestBookLoadingState());
    var result = await homeRepo.fetchNewestBooks();
    return result.fold((failure) {
      emit(NewestBookFailureState(failure.errMessage));
    }, (books){
      emit(NewestBookSuccessState(books));
    });
  }
}
