import 'package:flutter/material.dart';
import 'package:sphere_book/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const PopScope(
      canPop: false,
      child: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
