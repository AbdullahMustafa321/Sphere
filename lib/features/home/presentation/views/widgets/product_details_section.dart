import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/custom_image.dart';
import '../../../../../core/constant/constant.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/product_model.dart';
import 'product_rating.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key, required this.product});
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.24, vertical: 5.h),
          child:  CustomImage(image: product.image,),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            maxLines: 4,
            product.title,
            style: Styles.regularTextStyle30
                .copyWith(fontFamily: kGtSectraFine),
          ),
        ),
        SizedBox(height: 10.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            product.description,
            style: Styles.mediumTextStyle16.copyWith(
                color: kSubTitlesColor, fontStyle: FontStyle.italic),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text('Rating: '),
             ProductRating(rating: product.ratingsAverage.toString(),),
           ],
         ),
        SizedBox(height: 15.h),
      ],
    );
  }
}
