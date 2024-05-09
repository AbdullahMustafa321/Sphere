
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/constant/constant.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/custom_book_image.dart';

import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: const CustomBookDetailsAppBar(),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: width * 0.236, vertical: 5.h),
            child: const CustomBookImage(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Text(
              'Harry Potter',
              style: Styles.regularTextStyle30
                  .copyWith(fontFamily: kGtSectraFine),
            ),
          ),
          Text(
            'J.K RowLing',
            style: Styles.mediumTextStyle18.copyWith(color: kSubTitlesColor,fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 10.h,
          ),
          const BookRating(),
          SizedBox(height: 15.h),
          BooksAction(),
          SizedBox(height: 20.h),
          Text(
            'You can also like',
            style: Styles.semiBoldTextStyle14,
          ),
          SizedBox(height: 16.h),
          SizedBox(height: 115.h,child: const FeaturedBooksListView()),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}

