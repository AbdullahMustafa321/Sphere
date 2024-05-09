import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sphere_book/core/utils/assets.dart';

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
           IconButton(onPressed: () {  }, icon: const Icon(FontAwesomeIcons.magnifyingGlass),)
        ],
      ),
    );
  }
}
