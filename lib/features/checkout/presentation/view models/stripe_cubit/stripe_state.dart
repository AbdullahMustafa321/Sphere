part of 'stripe_cubit.dart';

@immutable
abstract class StripeState {}

final class StripeInitialState extends StripeState {}
final class StripeSuccessState extends StripeState {}
final class StripeLoadingState extends StripeState {}
final class StripeFailureState extends StripeState {
  final String errorMessage;

  StripeFailureState(this.errorMessage);
}
