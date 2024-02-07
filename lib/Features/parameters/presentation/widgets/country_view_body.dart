import 'package:advanced_news_app/Core/utils/constant.dart';
import 'package:advanced_news_app/Core/utils/search_delegate.dart';
import 'package:advanced_news_app/Features/parameters/data/local_data.dart';

import '../../../../Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'parameter_list_view.dart';

class CountryViewBody extends StatelessWidget {
  const CountryViewBody({super.key});

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Choose Country For News",
                style: Styles.textStyle22,
              ),
              IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: SearchCountry());
                },
                icon: const Icon(
                  Icons.search_rounded,
                  color: kPrimaryColor,
                  size: 26,
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: ParameterListView(
              parameter: countries,
            ),
          ),
        ],
      ),
    );
  }
}
