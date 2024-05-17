import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
     this.borderRadius,
    required this.textColor, this.onPressed,  this.fontSize, this.height=35, required this.child,
  });
 final void Function()? onPressed;
  final Color backGroundColor;
  final BorderRadiusGeometry? borderRadius;
  final Color textColor;
  final double? fontSize;
  final double? height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(20.r)
            )
        ),
        onPressed: onPressed,
        child: child,),
    );
  }
}
