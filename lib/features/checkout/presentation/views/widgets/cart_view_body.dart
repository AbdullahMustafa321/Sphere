import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sphere_book/core/constant/constant.dart';
import 'package:sphere_book/core/utils/app_router.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/core/widgets/custom_button.dart';
import 'package:sphere_book/features/home/presentation/view%20models/get_user_cart/get_user_cart_cubit.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/custom_x_mark_icon.dart';

import 'cart_list_view.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  void initState() {
    BlocProvider.of<GetUserCartCubit>(context).getUserCart(token: kToken);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUserCartCubit, GetUserCartState>(
      builder: (context, state) {
        if(state is GetUserCartSuccessState){
            return SafeArea(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 6.w),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomXMarkIcon(),
                          RichText(text: TextSpan(children: [
                            TextSpan(text: 'Total Price: ',style: Styles.boldTextStyle14),
                            TextSpan(text: '$kTotalPrice ',style: Styles.boldTextStyle16.copyWith(color: Colors.orange)),
                          ])),
                          CustomButton(
                            onPressed: (){
                              GoRouter.of(context).push(AppRouter.kCheckoutView);
                            },
                            backGroundColor: Colors.black,
                            textColor: Colors.white,
                            fontSize: 10,
                            child: const Text('Check Out'),)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                     Expanded(child: CartListView(products: state.products,))
                  ],
                ));
        }
        else if (state is GetUserCartFailureState){
          return  SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 10.w, vertical: 6.w),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomXMarkIcon(),
                        CustomButton(
                          backGroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 10,
                          child: Text('Check Out'),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Center(child: Image.asset('assets/images/empty-cart.png'))
                ],
              ));
        }
        else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }

}
