import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sphere_book/core/utils/app_router.dart';
import 'package:sphere_book/core/utils/server_locator.dart';
import 'package:sphere_book/features/home/data/repos/home_repo_impl.dart';
import 'package:sphere_book/features/home/presentation/view%20models/featured_books_cubit/featured_books_cubit.dart';
import 'package:sphere_book/features/home/presentation/view%20models/newest_book_cubit/newest_book_cubit.dart';

import 'core/constant/constant.dart';

class SphereApp extends StatelessWidget {
  const SphereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(360,690),
      builder: (_,context){
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context)=>FeaturedBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks()),
            BlocProvider(create: (context)=>NewestBookCubit(getIt.get<HomeRepoImpl>()))
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kBackGroundColor,
              textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            ),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
