import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150.w,
      child: AspectRatio(
        aspectRatio: 2 / 3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.white,
              image: const DecorationImage(
                  image: NetworkImage('https://diybookcovers.com/wp-content/uploads/2023/07/scifi5thumb.jpg'),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
