import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constant/constant.dart';
import '../../../../../core/utils/styles.dart';
import 'custom_image.dart';

class CartListViewItem extends StatelessWidget {
  const CartListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      child: Row(
        children: [
          CustomImage(
            image:
                'https://images.pexels.com/photos/699122/pexels-photo-699122.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
          ),
          SizedBox(
            width: 30.w,
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                  width: 200.w,
                  child: Text('product.title',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.regularTextStyle20
                          .copyWith(fontFamily: kGtSectraFine))),
              SizedBox(height: 2.h),
              Text(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                'product.description',
                style:
                    Styles.mediumTextStyle14.copyWith(color: kSubTitlesColor),
              ),
              SizedBox(height: 2.h),
              Row(
                children: [
                  Text(
                    'product.price \$',
                    style: Styles.boldTextStyle18,
                  ),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}
