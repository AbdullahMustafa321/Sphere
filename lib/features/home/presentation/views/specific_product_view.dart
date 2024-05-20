import 'package:flutter/material.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/specific_product_view_body.dart';

class SpecificProductsView extends StatelessWidget {
  const SpecificProductsView({super.key, required this.categoryId});
final String categoryId;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: SpecificProductsViewBody(categoryId: categoryId,));
  }
}
