import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:sphere_book/constant/constant.dart';
import 'package:sphere_book/core/utils/styles.dart';
import 'package:sphere_book/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:sphere_book/features/search/presentation/views/widgets/search_result_list_view.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kMainPadding.h),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(FontAwesomeIcons.arrowLeft)),
              const CustomSearchTextField(),
            ],
          ),
          const Divider(),
          SizedBox(
            height: kMainPadding.h,
          ),
          Padding(
            padding:  EdgeInsets.only(left: kMainPadding.w),
            child: Text(
              'Result',
              style: Styles.semiBoldTextStyle18,
            ),
          ),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
