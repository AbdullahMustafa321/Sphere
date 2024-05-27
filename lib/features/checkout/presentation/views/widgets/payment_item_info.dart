import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({
    super.key, required this.text, required this.result,
  });
final String text;
final String result;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style: Styles.mediumTextStyle18.copyWith(color: Colors.black),),
        Text(result,style: Styles.semiBoldTextStyle18.copyWith(color: Colors.black),)
      ],
    );
  }
}
