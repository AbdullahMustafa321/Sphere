import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sphere_book/core/utils/app_router.dart';
import 'package:sphere_book/core/utils/server_locator.dart';
import 'package:sphere_book/features/auth/presentation/view%20models/login_cubit/login_cubit.dart';
import 'package:sphere_book/features/auth/presentation/view%20models/register_cubit/register_cubit.dart';
import 'package:sphere_book/features/home/data/repos/home_repo_impl.dart';

import 'core/constant/constant.dart';
import 'features/auth/data/repos/auth_repo_impl.dart';
import 'features/home/presentation/view models/get_all_categories_cubit/get_all_categories_cubit.dart';
import 'features/home/presentation/view models/get_all_products_cubit/get_all_products_cubit.dart';

class SphereApp extends StatelessWidget {
  const SphereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      designSize: const Size(360, 690),
      builder: (_, context) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) =>
                    GetAllProductsCubit(getIt.get<HomeRepoImpl>())
                      ..getAllProduct()),
            BlocProvider(
                create: (context) =>
                    GetAllCategoriesCubit(getIt.get<HomeRepoImpl>())
                      ..getAllCategories()),
            BlocProvider(
              create: (context) => LoginCubit(getIt.get<AuthRepoImpl>()),
            ),
            BlocProvider(
              create: (context) => RegisterCubit(getIt.get<AuthRepoImpl>()),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: kBackGroundColor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
            ),
            debugShowCheckedModeBanner: false,
          ),
        );
      },
    );
  }
}
