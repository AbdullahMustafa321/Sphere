import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/constant/constant.dart';
import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.24, vertical: 5.h),
          child: const CustomBookImage( image: 'http://books.google.com/books/content?id=0sNdAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Harry Potter',
            style: Styles.regularTextStyle30
                .copyWith(fontFamily: kGtSectraFine),
          ),
        ),
        Text(
          'J.K RowLing',
          style: Styles.mediumTextStyle18.copyWith(
              color: kSubTitlesColor, fontStyle: FontStyle.italic),
        ),
        SizedBox(
          height: 15.h,
        ),
        const BookRating(),
        SizedBox(height: 15.h),
      ],
    );
  }
}
