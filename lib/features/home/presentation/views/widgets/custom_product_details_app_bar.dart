import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/custom_cart_icon.dart';

import 'custom_x_mark_icon.dart';

class CustomProductDetailsAppBar extends StatelessWidget {
  const CustomProductDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomXMarkIcon(),
        CustomCartIcon()
      ],
    );
  }
}

