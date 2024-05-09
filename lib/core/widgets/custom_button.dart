import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
     this.borderRadius,
    required this.text,
    required this.textColor, this.onPressed,  this.fontSize,
  });
 final void Function()? onPressed;
  final Color backGroundColor;
  final BorderRadiusGeometry? borderRadius;
  final String text;
  final Color textColor;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(20.r)
            )
        ),
        onPressed: onPressed,
        child: Text(
        text,
        style: Styles.boldTextStyle18.copyWith(color: textColor,fontSize:fontSize ),
      ),),
    );
  }
}
