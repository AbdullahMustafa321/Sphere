import 'package:dartz/dartz.dart';
import 'package:sphere_book/core/errors/failure.dart';
import 'package:sphere_book/features/checkout/data/models/payment_intent_input_model.dart';

abstract class CheckoutRepo{
  Future<Either<Failure,void>> makePayment({required PaymentIntentInputModel});
}