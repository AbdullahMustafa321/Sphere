import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sphere_book/core/utils/app_router.dart';
import 'package:sphere_book/core/utils/server_locator.dart';
import 'package:sphere_book/features/auth/presentation/view%20models/login_cubit/login_cubit.dart';
import 'package:sphere_book/features/auth/presentation/view%20models/register_cubit/register_cubit.dart';
import 'package:sphere_book/features/home/data/repos/home_repo_impl.dart';
import 'package:sphere_book/features/home/presentation/view%20models/add_product_to_cart/add_product_to_cart_cubit.dart';
import 'package:sphere_book/features/home/presentation/view%20models/change_count_cubit/change_count_cubit.dart';
import 'package:sphere_book/features/home/presentation/view%20models/delete_item_from_cart/delete_item_from_cart_cubit.dart';
import 'package:sphere_book/features/home/presentation/view%20models/get_specific_products_cubit/get_specific_product_cubit.dart';
import 'package:sphere_book/features/home/presentation/view%20models/get_user_cart/get_user_cart_cubit.dart';

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
            BlocProvider(
              create: (context) => GetUserCartCubit(getIt.get<HomeRepoImpl>()),
            ),
            BlocProvider(
              create: (context) => AddProductToCartCubit(getIt.get<HomeRepoImpl>()),
            ),
            BlocProvider(
              create: (context) => ChangeCountCubit(getIt.get<HomeRepoImpl>()),
            ),BlocProvider(
              create: (context) => DeleteItemFromCartCubit(getIt.get<HomeRepoImpl>()),
            ),
            BlocProvider(
              create: (context) => GetSpecificProductCubit(getIt.get<HomeRepoImpl>()),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: AppRouter.router,
            theme: ThemeData.dark().copyWith(
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepOrange,
                brightness: Brightness.dark,
              ),
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
