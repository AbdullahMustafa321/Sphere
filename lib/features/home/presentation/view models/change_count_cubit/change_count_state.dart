part of 'change_count_cubit.dart';

@immutable
abstract class ChangeCountState {
}

final class ChangeCountInitialState extends ChangeCountState {}
final class ChangeCountLoadingState extends ChangeCountState {}
final class ChangeCountFailureState extends ChangeCountState {
  final String errorMessage;

  ChangeCountFailureState(this.errorMessage);
}
final class ChangeCountSuccessState extends ChangeCountState {
  final String successMessage;

   ChangeCountSuccessState(this.successMessage);
}

