import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sphere_book/constant/constant.dart';
import 'package:sphere_book/core/utils/styles.dart';

class BestSellerBooksListViewItem extends StatelessWidget {
  const BestSellerBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                          'https://diybookcovers.com/wp-content/uploads/2023/07/scifi5thumb.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            width: 30.w,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                SizedBox(width: 20.w),
                Icon(
                  FontAwesomeIcons.solidStar,
                  color: Colors.yellow,
                  size: 14.sp,
                ),
                Text(
                  ' 4.8',
                  style: Styles.mediumTextStyle16,
                ),
                Text(
                  '  (2390)',
                  style: Styles.regularTextStyle14
                      .copyWith(color: kSubTitlesColor),
                )
              ],
            )
          ])
        ],
      ),
    );
  }
}
