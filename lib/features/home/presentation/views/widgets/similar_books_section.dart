import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/similar_books_list_view.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Text(
            'You can also like',
            style: Styles.semiBoldTextStyle14,
          ),
        ),
        SizedBox(height: 10.h),
        const SimilarBooksListView(),
        SizedBox(height: 40.h),
      ],
    );
  }
}
