import 'package:flutter/material.dart';
import 'package:sphere_book/features/checkout/presentation/views/widgets/cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: CartViewBody(),
    );
  }
}
