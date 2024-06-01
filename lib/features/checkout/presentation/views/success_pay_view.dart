import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sphere_book/features/checkout/presentation/views/widgets/success_pay_view_body.dart';
import 'package:sphere_book/features/home/presentation/view%20models/get_user_cart/get_user_cart_cubit.dart';

import '../../../../core/constant/constant.dart';
import '../../../home/presentation/views/widgets/custom_x_mark_icon.dart';
import '../view models/clear_cart_cubit/clear_cart_cubit.dart';

class SuccessPayView extends StatefulWidget {
  const SuccessPayView({super.key});

  @override
  State<SuccessPayView> createState() => _SuccessPayViewState();
}

class _SuccessPayViewState extends State<SuccessPayView> {
  @override
  void initState() {
    BlocProvider.of<ClearCartCubit>(context).clearCart(token: kToken);
    BlocProvider.of<GetUserCartCubit>(context).getUserCart(token: kToken);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.w),
              child: const Align(
                  alignment: Alignment.topLeft, child: CustomXMarkIcon()),
            ),
            Transform.translate(
              offset:  Offset(0,-16.h),
                child: const SuccessPayViewBody()),
          ],
        ),
      ),
    );
  }
}
