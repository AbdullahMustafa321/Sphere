import 'package:dartz/dartz.dart';
import 'package:sphere_book/core/errors/failure.dart';
import 'package:sphere_book/core/utils/stripe_service.dart';
import 'package:sphere_book/features/checkout/data/repo/checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo{
  StripeService stripeService= StripeService();

  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentInputModel})async {
   try {
     await stripeService.makePayment(model: PaymentIntentInputModel);
     return right(null);
   } on Exception catch (e) {
     return left(ServerFailure(e.toString()));
   }
  }
}