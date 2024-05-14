import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/constant/constant.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.r),
      child: SizedBox(
        width: 300.w,
        height: 50,
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            fillColor: kSecondaryBackGroundColor,
              filled: true,
              hintText: 'Search',
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              prefixIcon:  Opacity(
                opacity: 0.8,
                child: Icon(
                  size: 18.sp,
                  FontAwesomeIcons.magnifyingGlass,
                  color: Colors.grey,
                ),
              )),
        ),
      ),
    );
  }
}
