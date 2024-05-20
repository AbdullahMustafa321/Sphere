import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/data/models/cart_model.dart';

import 'cart_list_view_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key, required this.products});
  final List<CartModel> products;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding:  EdgeInsets.only(left:30.w,bottom: 8.h),
          child:  CartListViewItem(product: products[index],),
        );
      },
    );
  }
}
