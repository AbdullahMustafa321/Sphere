import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/cart_list_view.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/custom_x_mark_icon.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 6.w),
          child: const Align(
              alignment: Alignment.topLeft,
              child: CustomXMarkIcon()),
        ),
        SizedBox(height: 5.h,),
        const Expanded(child: CartListView())
      ],
    ));
  }
}
