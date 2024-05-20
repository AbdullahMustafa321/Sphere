import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/presentation/views/widgets/custom_x_mark_icon.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.w),
          child: const Align(
              alignment: Alignment.topLeft, child: CustomXMarkIcon()),
        ),
        SizedBox(
          height: 5.h,
        ),
      ],
    ));
  }
}
