import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sphere_book/core/constant/constant.dart';
import 'package:sphere_book/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:sphere_book/features/checkout/presentation/view%20models/stripe_cubit/stripe_cubit.dart';
import 'package:sphere_book/features/checkout/presentation/views/success_pay_view.dart';

import '../../../../../core/widgets/custom_button.dart';

class CustomButtonBlocConsumer extends StatelessWidget {
  const CustomButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<StripeCubit, StripeState>(
      listener: (context, state) {
        if(state is StripeSuccessState){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const SuccessPayView()));
        }if(state is StripeFailureState){
          Navigator.pop(context);
          SnackBar snackBar = SnackBar(backgroundColor:Colors.red,content: Text(state.errorMessage));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return CustomButton(
          isLoading: state is StripeLoadingState?true:false,
            onPressed: () {
            PaymentIntentInputModel paymentIntentInputModel = PaymentIntentInputModel(amount: kTotalPrice.toString(), currency: 'USD');
            BlocProvider.of<StripeCubit>(context).makePayment(paymentIntentInputModel: paymentIntentInputModel);
            },
            backGroundColor: Colors.black,
            child: const Text('Continue'));
      },
    );
  }
}
