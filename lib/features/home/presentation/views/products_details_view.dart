import 'package:flutter/material.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/product_details_view_body.dart';

import '../../data/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ProductDetailsViewBody(product: product,),
    );
  }
}
