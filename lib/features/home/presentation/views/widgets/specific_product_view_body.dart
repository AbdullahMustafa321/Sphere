import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/specific_category_products_list_view.dart';
import 'custom_x_mark_icon.dart';

class SpecificProductsViewBody extends StatelessWidget {
  const SpecificProductsViewBody({super.key, required this.categoryId});
final String categoryId;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.w),
            child: const Row(
              children: [
                CustomXMarkIcon(),
              ],
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding:  EdgeInsets.only(left: 8.w),
                child: Text(
                  'Products',
                  style: Styles.boldTextStyle20,
                ),
              )),
          SizedBox(
            height: 5.h,
          ),
          SpecificCategoryProductsListView(categoryId: categoryId,)
        ],
      ),
    );
  }
}
