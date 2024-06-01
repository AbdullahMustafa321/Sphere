import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sphere_book/features/checkout/data/models/payment_intent_input_model.dart';

import '../../../data/repo/checkout_repo.dart';

part 'stripe_state.dart';

class StripeCubit extends Cubit<StripeState> {
  StripeCubit(this.checkoutRepo) : super(StripeInitialState());
  CheckoutRepo checkoutRepo;

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(StripeLoadingState());
    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);
    data.fold((failure) => emit(StripeFailureState(failure.errMessage)),
            (success) => emit(StripeSuccessState()));
  }
  @override
  void onChange(Change<StripeState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
