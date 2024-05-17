import 'package:flutter/material.dart';
import 'package:card_loading/card_loading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesLoadingWidget extends StatelessWidget {
  const CategoriesLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.w),
          child: CardLoading(
            height: 210.h,
            width: 170.w,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            margin: const EdgeInsets.only(bottom: 10),
            cardLoadingTheme: CardLoadingTheme(colorOne: Colors.grey.withOpacity(0.7),colorTwo: Colors.white.withOpacity(0.7))
          ),
        ),
        SizedBox(height: 10.h,),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 5.w),
          child: CardLoading(
            height: 210.h,
            width: 170.w,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            margin: const EdgeInsets.only(bottom: 10),
              cardLoadingTheme: CardLoadingTheme(colorOne: Colors.grey.withOpacity(0.7),colorTwo: Colors.white.withOpacity(0.7))
          ),
        ),
        SizedBox(height: 10.h,),

      ]
    );
  }
}
