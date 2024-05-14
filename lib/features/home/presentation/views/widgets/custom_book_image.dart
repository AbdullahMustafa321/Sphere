import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/data/models/book_model.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.book, required this.index});
final BookModel book;
final int index;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            image:  DecorationImage(
                image: NetworkImage('${book.items![index].volumeInfo!.imageLinks!.thumbnail}'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
