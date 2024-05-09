import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sphere_book/constant/constant.dart';
import 'package:sphere_book/core/utils/app_router.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/book_rating.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 115,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2 / 3,
              child: Container(
                height: 115.h,
                width: 80.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://m.media-amazon.com/images/I/81q77Q39nEL._AC_UF1000,1000_QL80_.jpg'),
                        fit: BoxFit.fill)),
              ),
            ),
            SizedBox(
              width: 30.w,
            ),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                    width: 200.w,
                    child: Text('Harry Potter and the Goblet of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.regularTextStyle20
                            .copyWith(fontFamily: kGtSectraFine))),
                SizedBox(height: 2.h),
                Text(
                  'J.K RowLing',
                  style: Styles.mediumTextStyle14.copyWith(color: kSubTitlesColor),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Text(
                      '19.99 \$',
                      style: Styles.boldTextStyle18,
                    ),
                    const Spacer(),
                    const BookRating()
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
