import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/all_product_list_view.dart';
import '../../../../../core/constant/constant.dart';
import 'custom_home_app_bar.dart';
import 'all_categories_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: kMainPadding.w),
                child: const CustomHomeAppBar(),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: kMainPadding.w),
                child: Text(
                  "Categories",
                  style: Styles.semiBoldTextStyle18,
                ),
              ),

              SizedBox(
                height: 10.h,
              ),
              const AllCategoriesListView(),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: kMainPadding.w),
                child: Text(
                  "Products",
                  style: Styles.semiBoldTextStyle18,
                ),
              ),
            ],
          ),
        ),
        const AllProductListView()
      ],
    );
  }
}
