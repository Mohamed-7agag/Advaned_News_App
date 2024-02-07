import 'package:advanced_news_app/Features/parameters/data/local_data.dart';

import '../../../../Core/utils/styles.dart';
import 'parameter_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryViewBody extends StatelessWidget {
  const CategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 14,
        left: 15,
        right: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose Category Of News",
            style: Styles.textStyle22,
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ParameterListView(
              parameter: categories,
            ),
          ),
        ],
      ),
    );
  }
}
