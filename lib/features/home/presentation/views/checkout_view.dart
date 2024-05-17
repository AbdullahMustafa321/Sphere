import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/checkout_view_body.dart';


class CheckoutView extends StatelessWidget {

  CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CheckoutViewBody()
    );
  }
}
