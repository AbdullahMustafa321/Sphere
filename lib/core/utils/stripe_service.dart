import 'package:dio/dio.dart';
import 'package:sphere_book/core/utils/api_keys.dart';
import 'package:sphere_book/core/utils/api_services.dart';
import 'package:sphere_book/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:sphere_book/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  Future<PaymentIntentModel> createPaymentIntent(PaymentIntentInputModel model) async {
    final ApiServices apiServices = ApiServices(Dio());
    var response = await apiServices.stripePost(
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      body: model.toJson(),
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }
}
