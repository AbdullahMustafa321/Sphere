import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/constant/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
      AssetsData.gifLogo,
      height: 250.h,
      width: 250.w,
    ));
  }
}
