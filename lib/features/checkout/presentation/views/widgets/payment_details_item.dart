import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/constant/constant.dart';

class PaymentDetailsItem extends StatelessWidget {
  const PaymentDetailsItem({
    super.key,
    required this.image,
    required this.isActive,
  });

  final String image;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 103.w,
      height: 62.h,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: isActive
                ? const BorderSide(width: 1.50, color: Colors.green)
                : const BorderSide(width: 1.50, color: Colors.grey),
            borderRadius: BorderRadius.circular(15),
          ),
          shadows: [
            BoxShadow(
                color: isActive ? Colors.green : Colors.black,
                blurRadius: 4,
                offset: const Offset(0, 0),
                spreadRadius: 0)
          ]),
      child: Container(
          decoration: BoxDecoration(
            color: kBackGroundColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(child: SvgPicture.asset(image))),
    );
  }
}
