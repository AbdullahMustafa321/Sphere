import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/constant/constant.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/book_list_view_item.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
        itemBuilder: (context,index){
      return Padding(
        padding: EdgeInsets.symmetric(vertical: kMainPadding.h,horizontal: kMainPadding.w),
        child: const BookListViewItem(),
      );
    });
  }
}
