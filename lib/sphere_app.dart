import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sphere_book/constant/colors.dart';
import 'features/splash/presentation/views/splash_view.dart';

class SphereApp extends StatelessWidget {
  const SphereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(360,690),
      builder: (_,context){
        return GetMaterialApp(
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kBackGroundColor,
          ),
          debugShowCheckedModeBanner: false,
          home:const SplashView(),
        );
      },
    );
  }
}
