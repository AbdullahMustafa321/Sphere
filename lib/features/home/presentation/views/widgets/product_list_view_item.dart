import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/home/data/models/product_model.dart';
import 'package:sphere_book/features/home/presentation/views/products_details_view.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/custom_image.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/product_rating.dart';

import '../../../../../core/constant/constant.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductDetailsView(product: product,)));
      },
      child: SizedBox(
        height: 115,
        child: Row(
          children: [
            CustomImage(image: product.image,),
            SizedBox(
              width: 30.w,
            ),
            Expanded(
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                SizedBox(
                    width: 200.w,
                    child: Text(product.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.regularTextStyle20
                            .copyWith(fontFamily: kGtSectraFine))),
                SizedBox(height: 2.h),
                Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  product.description,
                  style: Styles.mediumTextStyle14.copyWith(color: kSubTitlesColor),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Text(
                      '${product.price} \$',
                      style: Styles.boldTextStyle18,
                    ),
                    const Spacer(),
                     ProductRating(rating: product.ratingsAverage.toString(),)
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
