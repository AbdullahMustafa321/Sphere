import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/home/data/models/categories_model.dart';
import 'package:sphere_book/features/home/data/repos/home_repo.dart';

part 'get_all_categories_state.dart';

class GetAllCategoriesCubit extends Cubit<GetAllCategoriesState> {
  GetAllCategoriesCubit(this.homeRepo) : super(GetAllCategoriesInitialState());
  final HomeRepo homeRepo;
  Future<void> getAllCategories()async{
    emit(GetAllCategoriesLoadingState());
    var result = await homeRepo.getAllCategories();
    return result.fold((failure) {
      emit(GetAllCategoriesFailureState(failure.errMessage));
    }, (category){
      emit(GetAllCategoriesSuccessState(category));
    });
  }
}
