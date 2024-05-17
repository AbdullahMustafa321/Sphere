import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/product_list_view_item.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/product_loading_widget.dart';

import '../../../../../core/constant/constant.dart';
import '../../view models/get_all_products_cubit/get_all_products_cubit.dart';

class AllProductListView extends StatelessWidget {
  const AllProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllProductsCubit, GetAllProductsState>(
      builder: (context, state) {
        if (state is GetAllProductsSuccessState) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: state.products.length, (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    vertical: kMainPadding.h, horizontal: kMainPadding.w),
                child: ProductListViewItem(
                  product: state.products[index],
                ),
              );
            }),
          );
        }
        else if (state is GetAllProductsFailureState) {
          return Text(state.errorMessage);
        } else {
          return const ProductLoadingWidget();
        }
      },
    );
  }
}
