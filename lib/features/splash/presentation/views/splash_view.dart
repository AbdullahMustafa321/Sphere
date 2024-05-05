import 'package:flutter/material.dart';
import 'package:sphere_book/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static String id = "Splash-View";
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SplashViewBody(),
    );
  }
}
