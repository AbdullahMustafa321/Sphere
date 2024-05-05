
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/custom_list_view_item.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        const CustomAppBar(),
        SizedBox(
          height: 224.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
              itemBuilder: (context ,index){
            return Padding(
              padding:  EdgeInsets.only(right:8.w),
              child: const CustomListViewItem(),
            );
          }),
        )
      ],
    );
  }
}
