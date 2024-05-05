import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:Image.asset(
        height: 250.h,
          width: 250.w,
          'assets/images/Sphere.gif')
    );
  }
}
