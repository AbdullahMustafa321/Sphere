import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:sphere_book/core/constant/constant.dart';
import 'package:sphere_book/core/utils/styles.dart';

import 'credit_card_info.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 18.w),
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
              SizedBox(
                height: 30.h,
              ),
               PaymentItemInfo(
                text: 'Date',
                result: DateFormat("dd-MM-yyyy").format(DateTime.now()),
              ),
              SizedBox(
                height: 10.h,
              ),
               PaymentItemInfo(
                text: 'Time',
                result: DateFormat.jm().format(DateTime.now()),
              ),
              SizedBox(
                height: 10.h,
              ),
              const PaymentItemInfo(
                text: 'To',
                result: 'Abdullah Maher',
              ),
              SizedBox(
                height: 20.h,
              ),
              const Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 20.h,
              ),
              PaymentItemInfo(
                text: 'Total',
                result: '\$$kTotalPrice',
              ),
              SizedBox(
                height: 15.h,
              ),
              const CreditCardInfo(),
              SizedBox(
                height: 80.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/images/barcode.svg'),
                  Container(
                    width: 113.w,
                    height: 58.h,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            width: 2,
                            color: Colors.green
                          ),
                            borderRadius: BorderRadius.circular(15.r))),
                    child: Center(
                        child: Text(
                      'PAID',
                      style:
                          Styles.boldTextStyle18.copyWith(color: Colors.green),
                    )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
