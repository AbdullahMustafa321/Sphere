part of 'newest_book_cubit.dart';

@immutable
abstract class NewestState {
  const NewestState();
}

final class NewestBookInitialState extends NewestState {}
final class NewestBookLoadingState extends NewestState {}
final class NewestBookFailureState extends NewestState {
  final String errorMessage;
  const NewestBookFailureState(this.errorMessage);
}
final class NewestBookSuccessState extends NewestState {
  final List<BookModel> books;
  const NewestBookSuccessState(this.books);
}
