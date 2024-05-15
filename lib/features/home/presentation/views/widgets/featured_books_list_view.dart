import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/presentation/view%20models/featured_books_cubit/featured_books_cubit.dart';

import 'custom_book_image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessState) {
          return SizedBox(
            height: 224.w,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.books.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child:  CustomBookImage(image:state.books[index].volumeInfo.imageLinks.thumbnail),
                  );
                },
            ),
          );
        }else if (state is FeaturedBooksFailureState){
          return Text(state.errorMessage);
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
