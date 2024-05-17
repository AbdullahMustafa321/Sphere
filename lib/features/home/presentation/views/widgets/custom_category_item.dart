import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sphere_book/core/utils/app_router.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/home/data/models/categories_model.dart';
import 'package:sphere_book/features/home/presentation/views/specific_product_view.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SpecificProductsView(categoryId: category.categoryId)));
      },
      child: Stack(
        children:[ClipRRect(
          borderRadius: BorderRadius.circular(16.r),
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: CachedNetworkImage(
              imageUrl: category.image,
              errorWidget: (context, url, error) => const Icon(Icons.error_outline),
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
          Positioned(top: 180.h,left: 30.w,child:  Text(category.name,style: Styles.boldTextStyle14,),)

        ]
      ),
    );
  }
}
