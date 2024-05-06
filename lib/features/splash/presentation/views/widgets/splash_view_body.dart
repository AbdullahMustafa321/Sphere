import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:sphere_book/features/home/presentation/views/home_view.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../constant/constant.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigate();
  }
  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: slideAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slideAnimation,
            child: Image.asset(
              AssetsData.kGifLogo,
              height: 250.h,
              width: 250.w,
            ),
          );
        },
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slideAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  void navigate() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),
          transition: Transition.fade, duration: kTranstionDurations);
    });
  }

}
