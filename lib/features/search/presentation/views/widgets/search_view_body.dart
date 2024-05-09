import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sphere_book/features/search/presentation/views/widgets/custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(top: 5.h),
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                GoRouter.of(context).pop();
              }, icon: const Icon(FontAwesomeIcons.arrowLeft)),
              const CustomSearchTextField(),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
