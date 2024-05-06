import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'featured_list_view_item.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 224.w,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context ,index){
            return Padding(
              padding:  EdgeInsets.only(right:8.w),
              child: const FeaturedListViewItem(),
            );
          }),
    );
  }
}
