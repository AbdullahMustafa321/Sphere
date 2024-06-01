import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:sphere_book/core/utils/api_keys.dart';
import 'package:sphere_book/core/utils/api_services.dart';
import 'package:sphere_book/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:sphere_book/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel model) async {
    final ApiServices apiServices = ApiServices(Dio());
    var response = await apiServices.stripePost(
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      body: model.toJson(),
    );
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: paymentIntentClientSecret,
            merchantDisplayName: 'Abdullah'));
  }

  Future displayPaymentSheet() async {
    Stripe.instance.presentPaymentSheet();
  }

  Future makePayment({required PaymentIntentInputModel model}) async {
    var paymentIntentModel = await createPaymentIntent(model);
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}
