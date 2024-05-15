import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/data/models/product_model.dart';

import '../../../../../core/widgets/custom_button.dart';

class ProductsAction extends StatelessWidget {
  const ProductsAction({
    super.key, required this.product,
  });
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 38.w),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backGroundColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  bottomLeft: Radius.circular(20.r)),
              text: '${product.price} \$',
              textColor: Colors.black,
            ),
          ),
          Expanded(
            child: CustomButton(
              backGroundColor: const Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r)),
              text: 'Add to Cart',
              textColor: Colors.white,
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
