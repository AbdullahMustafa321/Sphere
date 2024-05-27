
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        20,
            (index) => Expanded(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 3.w),
            child: Container(
              color: const Color(0xFFB8B8B8),
              height: 3,
            ),
          ),
        ),
      ),
    );
  }
}
