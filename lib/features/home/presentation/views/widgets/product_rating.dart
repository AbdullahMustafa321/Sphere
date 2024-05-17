import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constant/constant.dart';
import '../../../../../core/utils/styles.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key,  this.mainAxisAlignment=MainAxisAlignment.center, required this.rating});
final MainAxisAlignment mainAxisAlignment;
final String rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:mainAxisAlignment ,
      children: [
        Text(
          ' $rating ',
          style: Styles.mediumTextStyle16,
        ),
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14.sp,
        ),
      ],
    );
  }
}
