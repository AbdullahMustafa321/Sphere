import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sphere_book/core/utils/assets.dart';

import '../../../../checkout/presentation/views/widgets/custom_cart_icon.dart';

class CustomHomeAppBar extends StatefulWidget {
  const CustomHomeAppBar({super.key});

  @override
  State<CustomHomeAppBar> createState() => _CustomHomeAppBarState();
}

class _CustomHomeAppBarState extends State<CustomHomeAppBar> {
  bool isClick=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(AssetsData.kLogo,height: 60.h,),
          const Spacer(),
          const CustomCartIcon(),
          IconButton(onPressed: () {
             showDialog(
                 context: context,
                 builder: (context) {
                   return AlertDialog(
                     title: const Text(
                         'Are you sure you want to Logout!'),
                     actions: [
                       MaterialButton(
                         onPressed: () {
                           GoRouter.of(context).pop();
                           GoRouter.of(context).pop();
                         },
                         child: const Text('YES'),
                       ),
                       MaterialButton(
                         onPressed: () {
                           Navigator.pop(context);
                         },
                         child: const Text('NO'),
                       )
                     ],
                   );
                 });


           }, icon: const Icon(FontAwesomeIcons.arrowRightFromBracket),),
        ],
      ),
    );
  }
}
