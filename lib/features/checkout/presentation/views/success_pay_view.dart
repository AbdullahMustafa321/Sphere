import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/checkout/presentation/views/widgets/success_pay_view_body.dart';

import '../../../home/presentation/views/widgets/custom_x_mark_icon.dart';

class SuccessPayView extends StatelessWidget {
  const SuccessPayView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.w),
              child: const Align(
                  alignment: Alignment.topLeft, child: CustomXMarkIcon()),
            ),
            Transform.translate(
              offset:  Offset(0,-16.h),
                child: const SuccessPayViewBody()),
          ],
        ),
      ),
    );
  }
}
