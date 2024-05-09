import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sphere_book/constant/constant.dart';
import 'package:sphere_book/core/utils/app_router.dart';

class SphereApp extends StatelessWidget {
  const SphereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(360,690),
      builder: (_,context){
        return MaterialApp.router(
          routerConfig: AppRouter.router,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kBackGroundColor,
            textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
