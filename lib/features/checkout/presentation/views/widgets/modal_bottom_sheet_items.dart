import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sphere_book/core/widgets/custom_button.dart';
import 'package:sphere_book/features/checkout/presentation/views/widgets/payment_methods_list_view.dart';

import '../../../../../core/utils/app_router.dart';
import 'custom_button_bloc_consumer.dart';

class ModalBottomSheetItems extends StatelessWidget {
  const ModalBottomSheetItems({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.all(18.w),
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20.h,),
          const PaymentMethodsListView(),
          SizedBox(height: 20.h,),
           const CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}

