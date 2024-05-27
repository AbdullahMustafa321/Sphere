import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/core/constant/constant.dart';
import 'package:sphere_book/core/utils/styles.dart';

import 'payment_item_info.dart';

class SuccessCard extends StatelessWidget {
  const SuccessCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 550.h,
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      ),
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 18.w),
        child: Padding(
          padding: EdgeInsets.only(top: 45.h),
          child: Column(
            children: [
              Text(
                'Thank you!',
                style: Styles.boldTextStyle30.copyWith(color: Colors.black),
              ),
              Text(
                'Your transaction was successful',
                style: Styles.regularTextStyle16.copyWith(color: Colors.black),
              ),
              SizedBox(height: 30.h,),
              const PaymentItemInfo(text: 'Date', result: '01/24/2023',),
              SizedBox(height: 10.h,),
              const PaymentItemInfo(text: 'Time', result: '10:30 AM',),
              SizedBox(height: 10.h,),
              const PaymentItemInfo(text: 'To', result: 'Abdullah Maher',),
              SizedBox(height: 20.h,),
              const Divider(color: Colors.grey,),
              SizedBox(height: 20.h,),
               PaymentItemInfo(text: 'Total', result: '\$$kTotalPrice',),

            ],
          ),
        ),
      ),
    );
  }
}

