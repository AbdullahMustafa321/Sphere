import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/best_seller_books_list_view_item.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
        itemBuilder: (context,index){
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: const BestSellerBooksListViewItem(),
      );
    });
  }
}
