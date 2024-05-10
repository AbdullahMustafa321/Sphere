import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../constant/constant.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,  this.mainAxisAlignment=MainAxisAlignment.center});
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
      children: [
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
    );
  }
}
