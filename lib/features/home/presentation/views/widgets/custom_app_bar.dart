import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sphere_book/constant/assets.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
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
