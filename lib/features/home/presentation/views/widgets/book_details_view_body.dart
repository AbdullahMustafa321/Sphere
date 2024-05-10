import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/similar_books_section.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                  child: const CustomBookDetailsAppBar(),
                ),
                const BookDetailsSection(),
                const BooksAction(),
                Expanded(child: SizedBox(height: 20.h)),
                const SimilarBooksSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
