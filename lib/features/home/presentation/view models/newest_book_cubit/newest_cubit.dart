import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/home/data/repos/home_repo.dart';

import '../../../data/models/book_model.dart';

part 'newest_state.dart';

class NewsetCubit extends Cubit<NewestState> {
  NewsetCubit(this.homeRepo) : super(NewestInitialState());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBook()async{
    emit(NewestLoadingState());
    var result = await homeRepo.fetchNewestBooks();
    return result.fold((failure) {
      emit(NewestFailureState(failure.errMessage));
    }, (books){
      emit(NewestSuccessState(books));
    });
  }
}
