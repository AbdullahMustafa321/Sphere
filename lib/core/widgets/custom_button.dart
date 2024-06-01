import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    this.borderRadius,
    this.onPressed,
    this.fontSize,
    this.height = 45,
    this.width = 100,
    required this.child,
    this.isLoading = false,
  });

  final void Function()? onPressed;
  final Color backGroundColor;
  final BorderRadiusGeometry? borderRadius;
  final double? fontSize;
  final double? height;
  final Widget child;
  final double? width;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(20.r))),
        onPressed: onPressed,
        child: isLoading
            ?  Center(child: SizedBox(height:10.h,width:20.w,child: const CircularProgressIndicator()))
            : child,
      ),
    );
  }
}
