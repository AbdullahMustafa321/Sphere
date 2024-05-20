import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sphere_book/features/home/presentation/view%20models/change_count_cubit/change_count_cubit.dart';
import 'package:sphere_book/features/home/presentation/view%20models/delete_item_from_cart/delete_item_from_cart_cubit.dart';
import 'package:sphere_book/features/home/presentation/view%20models/get_user_cart/get_user_cart_cubit.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/custom_icon_button.dart';

import '../../../../../core/constant/constant.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/cart_model.dart';
import 'custom_image.dart';

class CartListViewItem extends StatelessWidget {
  CartListViewItem({super.key, required this.product});

  final CartModel product;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeCountCubit, ChangeCountState>(
      listener: (context, state) {
        if (state is ChangeCountSuccessState) {
          isLoading = true;
        }
        if (state is ChangeCountSuccessState) {
          isLoading = false;
          BlocProvider.of<GetUserCartCubit>(context).getUserCart(token: kToken);
        }
        if (state is ChangeCountFailureState) {
          isLoading = false;
        }
      },
      builder: (context, state) {
        return SizedBox(
          height: 115,
          child: Row(
            children: [
              CustomImage(
                image: product.product.imageCover.toString(),
              ),
              SizedBox(
                width: 30.w,
              ),
              SizedBox(
                width: 100.w,
                child: Text(product.product.title.toString(),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.regularTextStyle20
                        .copyWith(fontFamily: kGtSectraFine)),
              ),
              SizedBox(
                width: 25.w,
              ),
              Column(
                children: [
                  CustomIconButton(
                      onPressed: () {
                        BlocProvider.of<ChangeCountCubit>(context)
                            .incrementProduct(
                          token: kToken,
                          productId: product.product.sId,
                          count: product.count,
                        );
                      },
                      icon: FontAwesomeIcons.plus),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(product.count.toString()),
                  SizedBox(
                    height: 3.h,
                  ),
                  CustomIconButton(
                          onPressed: () {
                            BlocProvider.of<ChangeCountCubit>(context)
                                .decrementProduct(
                              token: kToken,
                              productId: product.product.sId,
                              count: product.count,
                            );
                          }, icon: FontAwesomeIcons.minus)
                ],
              ),
              SizedBox(
                width: 10.w,
              ),
              IconButton(onPressed: ()async{
                await BlocProvider.of<DeleteItemFromCartCubit>(context).deleteItemFromCart(token: kToken, productId: product.product.sId);
                await BlocProvider.of<GetUserCartCubit>(context).getUserCart(token: kToken);
              }, icon: const Icon(FontAwesomeIcons.xmark))
            ],
          ),
        );
      },
    );
  }
}
