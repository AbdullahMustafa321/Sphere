import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/constant/constant.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/featured_list_view_item.dart';

import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: ListView(
        children: [
          Column(
            children: [
              const CustomBookDetailsAppBar(),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: width * 0.2, vertical: 20.h),
                child: const FeaturedListViewItem(),
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
                style: Styles.mediumTextStyle18.copyWith(color: kSubTitlesColor),
              ),
              SizedBox(
                height: 14.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BookRating(),
                ],
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 150.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            bottomLeft: Radius.circular(20.r))),
                    child: Text(
                      '19.99\$',
                      style: Styles.boldTextStyle18.copyWith(color: Colors.black),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 150.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: Color(0xffEF8262),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.r),
                            bottomRight: Radius.circular(20.r))),
                    child: Text('Free preview', style: Styles.boldTextStyle16),
                  )
                ],
              ),
              SizedBox(height: 30.h),
              Text(
                'You can also like',
                style: Styles.semiBoldTextStyle14,
              ),
              SizedBox(height: 16.h),
              SizedBox(height: 115.h,child: FeaturedBooksListView()),
              SizedBox(height: 40.h),
            ],
          ),
        ],
      ),
    );
  }
}
