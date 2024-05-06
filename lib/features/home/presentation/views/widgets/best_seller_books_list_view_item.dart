import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sphere_book/core/utils/styles.dart';

class BestSellerBooksListViewItem extends StatelessWidget {
  const BestSellerBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Container(
        height: 115.h,
        width: 80.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            image: const DecorationImage(
                image: NetworkImage('https://diybookcovers.com/wp-content/uploads/2023/07/scifi5thumb.jpg'),
                fit: BoxFit.fill)),
    ),
        SizedBox(width: 30.w,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('The Jungle Book',style: Styles.titleMedium,maxLines: 2,overflow: TextOverflow.ellipsis,),
            Text('J.K RowLing',style: Styles.titleSmall,),
            Row(
              children: [
                Text('19.99\$',style: Styles.titleMedium,),
                SizedBox(width: 20.w,),
                Icon(FontAwesomeIcons.solidStar,color: Colors.yellow,size: 14.sp,),
                Text(' 4.8'),
                Text('  (2390)',style: Styles.titleSmall,)
              ],
            )
          ]
        )
      ],
    );
  }
}
