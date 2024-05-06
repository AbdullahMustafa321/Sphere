import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/best_seller_books_list_view.dart';

import 'custom_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        SizedBox(
          height: 18.h,
        ),
        const FeaturedBooksListView(),
        SizedBox(
          height: 15.h,
        ),
        Text(
          "Best Seller",
          style: Styles.titleMedium,
        ),
        const Expanded(child: BestSellerBooksListView())
      ],
    );
  }
}
