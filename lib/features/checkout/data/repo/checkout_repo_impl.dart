import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sphere_book/core/errors/failure.dart';
import 'package:sphere_book/core/utils/api_services.dart';
import 'package:sphere_book/core/utils/stripe_service.dart';
import 'package:sphere_book/features/checkout/data/models/payment_intent_input_model.dart';

import 'checkout_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo{
  StripeService stripeService= StripeService();
  ApiServices apiServices=ApiServices(Dio());

  @override
  Future<Either<Failure, void>> makePayment({required PaymentIntentInputModel paymentIntentInputModel})async {
   try {
     await stripeService.makePayment(model: paymentIntentInputModel);
     return right(null);
   } catch (e) {
     if (e is DioException) {
       return left(ServerFailure.fromDioException(e));
     } else {
       return left(ServerFailure(e.toString()));
     }
   }
  }

  @override
  Future<Either<Failure, String>> clearCart({required String token}) async{
    try {
      await apiServices.delete( endpoints: 'cart',token: token);
      return right('success');
    }catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}