import 'package:card_loading/card_loading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductLoadingWidget extends StatelessWidget {
  const ProductLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(delegate: SliverChildBuilderDelegate(
      childCount: 2,(context,index){
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Column(
            children: [
              CardLoading(
                  height: 100.h,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  margin: const EdgeInsets.only(bottom: 10),
                  cardLoadingTheme: CardLoadingTheme(
                      colorOne: Colors.grey.withOpacity(0.7),
                      colorTwo: Colors.white.withOpacity(0.7))),
              Align(
                alignment: Alignment.topLeft,
                child: CardLoading(
                    width: 280.w,
                    height: 30.h,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    margin: const EdgeInsets.only(bottom: 10),
                    cardLoadingTheme: CardLoadingTheme(
                        colorOne: Colors.grey.withOpacity(0.7),
                        colorTwo: Colors.white.withOpacity(0.7))),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: CardLoading(
                    width: 200.w,
                    height: 25.h,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    margin: const EdgeInsets.only(bottom: 10),
                    cardLoadingTheme: CardLoadingTheme(
                        colorOne: Colors.grey.withOpacity(0.7),
                        colorTwo: Colors.white.withOpacity(0.7))),
              ),
            ],
          ),
        );
    }
    ));
  }
}
