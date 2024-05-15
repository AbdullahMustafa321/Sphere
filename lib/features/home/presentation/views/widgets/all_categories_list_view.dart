import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../view models/get_all_categories_cubit/get_all_categories_cubit.dart';
import 'custom_category_item.dart';

class AllCategoriesListView extends StatelessWidget {
  const AllCategoriesListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllCategoriesCubit, GetAllCategoriesState>(
      builder: (context, state) {
        if (state is GetAllCategoriesSuccessState) {
          return SizedBox(
            height: 224.w,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: state.category.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child:  CustomCategoryItem(category:state.category[index],),
                  );
                },
            ),
          );
        }
        else if (state is GetAllCategoriesFailureState){
          return Text(state.errorMessage);
        }
        else{
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
