import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sphere_book/core/utils/app_router.dart';

class CustomCartIcon extends StatelessWidget {
  const CustomCartIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      GoRouter.of(context).push(AppRouter.kCartView);
    }, icon: const Icon(FontAwesomeIcons.cartShopping));
  }
}
