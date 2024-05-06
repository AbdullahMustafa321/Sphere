import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            image: const DecorationImage(
                image: NetworkImage('https://diybookcovers.com/wp-content/uploads/2023/07/scifi5thumb.jpg'),
                fit: BoxFit.fill)),
      ),
    );
  }
}
