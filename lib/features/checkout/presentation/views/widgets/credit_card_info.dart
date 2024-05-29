import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';

class CreditCardInfo extends StatelessWidget {
  const CreditCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 307,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r)),
      ),
      child: Row(
        children: [
          SizedBox(width: 20.w,),
          SvgPicture.asset('assets/images/logo.svg'),
          SizedBox(width: 20.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Credit Card',style: Styles.semiBoldTextStyle16.copyWith(color: Colors.black),),
              Text('Mastercard **7',style: Styles.mediumTextStyle16.copyWith(color: Colors.grey),)
            ],)
        ],
      ),
    );
  }
}
