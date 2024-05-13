part of 'newest_cubit.dart';

@immutable
abstract class NewestState {
  const NewestState();
}

final class NewestInitialState extends NewestState {}
final class NewestLoadingState extends NewestState {}
final class NewestFailureState extends NewestState {
  final String errorMessage;
  const NewestFailureState(this.errorMessage);
}
final class NewestSuccessState extends NewestState {
  final List<BookModel> books;
  const NewestSuccessState(this.books);
}
