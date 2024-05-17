import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/data/models/product_model.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/product_details_section.dart';
import 'custom_x_mark_icon.dart';
import 'products_action.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                  child: const Row(
                    children: [
                      CustomXMarkIcon(),
                    ],
                  ),
                ),
                 ProductDetailsSection(product: product,),
                 ProductsAction(product: product,),
                SizedBox(height: 50.h,)
              ],
            ),
          ),
        )
      ],
    );
  }
}
