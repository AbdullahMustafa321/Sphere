import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/core/widgets/custom_button.dart';
import 'package:sphere_book/features/checkout/presentation/views/success_pay_view.dart';
import 'package:sphere_book/features/checkout/presentation/views/widgets/custom_credit_card.dart';
import '../../../../home/presentation/views/widgets/custom_x_mark_icon.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
   AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.w),
          child: const Align(
              alignment: Alignment.topLeft, child: CustomXMarkIcon()),
        ),
        SizedBox(
          height: 5.h,
        ),
        // CustomCreditCard(
        //   formKey: formKey,
        //   autoValidateMode: autoValidateMode,
        // ),
        SizedBox(
          height: 20.h,
        ),
        Align(
          child: CustomButton(
            backGroundColor: Colors.black,
            fontSize: 10.sp,
            child: Text(
              'Pay',
              style: Styles.boldTextStyle14,
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const SuccessPayView()));
                autoValidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),
        )
      ],
    ));
  }
}
