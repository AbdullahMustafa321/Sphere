import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/product_list_view_item.dart';

import '../../../../../core/constant/constant.dart';
import '../../view models/get_specific_products_cubit/get_specific_product_cubit.dart';

class SpecificCategoryProductsListView extends StatefulWidget {
  const SpecificCategoryProductsListView({super.key, required this.categoryId});

  final String categoryId;

  @override
  State<SpecificCategoryProductsListView> createState() =>
      _SpecificCategoryProductsListViewState();
}

class _SpecificCategoryProductsListViewState
    extends State<SpecificCategoryProductsListView> {
  @override
  void initState() {
    BlocProvider.of<GetSpecificProductCubit>(context).getSpecificCategoryProducts(categoryId: widget.categoryId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetSpecificProductCubit, GetSpecificProductState>(
      builder: (context, state) {
        if (state is GetSpecificProductsSuccessState) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: kMainPadding.h, horizontal: kMainPadding.w),
                  child: ProductListViewItem(product: state.products[index]),
                );
              },
            ),
          );
        } else if (state is GetSpecificProductsFailureState) {
          return Text(state.errorMessage);
        } else {
          return  const Center(child:CircularProgressIndicator(),);
        }
      },
    );
  }
}
