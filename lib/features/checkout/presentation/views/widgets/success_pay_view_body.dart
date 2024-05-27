import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/core/constant/constant.dart';
import 'package:sphere_book/features/checkout/presentation/views/widgets/success_card.dart';

import '../../../../home/presentation/views/widgets/custom_x_mark_icon.dart';
import 'custom_check_icon.dart';
import 'custom_dash_line.dart';

class SuccessPayViewBody extends StatelessWidget {
  const SuccessPayViewBody({super.key});

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
        Padding(
          padding: const EdgeInsets.all(25),
          child: Stack(clipBehavior: Clip.none, children: [
            const SuccessCard(),
            Positioned(
                bottom: MediaQuery.sizeOf(context).height * .2+20,
                left: 22,
                right: 22,
                child: const CustomDashedLine()),
            Positioned(
                bottom: MediaQuery.sizeOf(context).height * .2,
                left: -20,
                child: const CircleAvatar(
                  backgroundColor: kBackGroundColor,
                )),
            Positioned(
                bottom: MediaQuery.sizeOf(context).height * .2,
                right: -20,
                child: const CircleAvatar(
                  backgroundColor: kBackGroundColor,
                )),
            const Positioned(
              left: 0,
              right: 0,
              top: -50,
              child: CustomCheckIcon(),
            ),
          ]),
        )
      ],
    ));
  }
}
