import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/core/constant/constant.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/home/data/models/product_model.dart';
import 'package:sphere_book/features/home/presentation/view%20models/add_product_to_cart/add_product_to_cart_cubit.dart';

import '../../../../../core/widgets/custom_button.dart';

class ProductsAction extends StatelessWidget {
  ProductsAction({
    super.key,
    required this.product,
  });

  final ProductModel product;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddProductToCartCubit, AddProductToCartState>(
      listener: (context, state) {
        if (state is AddProductToCartLoadingState) {
          isLoading = true;
        }
        if (state is AddProductToCartSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              backgroundColor: Colors.green,
              content: Text('Successfully Added to Cart')));
          isLoading = false;
        }
        if (state is AddProductToCartFailureState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red, content: Text(state.errorMessage)));
          isLoading = false;
        }
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 38.w),
          child: Row(
            children: [
              Expanded(
                child: CustomButton(
                  height: 40.h,
                  backGroundColor: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.r),
                      bottomLeft: Radius.circular(20.r)),
                  child: Text('${product.price} \$',
                      style:
                          Styles.boldTextStyle18.copyWith(color: Colors.black)),
                ),
              ),
              Expanded(
                child: CustomButton(
                  isLoading: isLoading,
                  height: 40.h,
                  onPressed: () {
                    BlocProvider.of<AddProductToCartCubit>(context).addProductToCart(token:kToken , id: product.id);
                  },
                  backGroundColor: const Color(0xffEF8262),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20.r),
                      bottomRight: Radius.circular(20.r)),
                  fontSize: 16.sp,
                  child:Text(
                          'Add to Cart',
                          style: Styles.boldTextStyle16
                              .copyWith(color: Colors.white),
                        )
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
