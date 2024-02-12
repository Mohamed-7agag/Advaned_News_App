import 'package:advanced_news_app/Core/utils/app_router.dart';
import 'package:advanced_news_app/Core/utils/constant.dart';
import 'package:advanced_news_app/Features/parameters/data/local_data.dart';
import '../../../../Core/utils/styles.dart';
import 'package:flutter/material.dart';

class ParameterListViewItem extends StatelessWidget {
  const ParameterListViewItem(
      {super.key, required this.index, required this.parameter});
  final int index;
  final List parameter;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (parameter == countries) {
          countryName = countrySymbols[index];
          Navigator.pushNamed(context, AppRouter.categoryRoute);
        } else {
          categoryName = categories[index];
          Navigator.pushNamed(context, AppRouter.viewRoute);
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: lighterGrey,
        ),
        child: ListTile(
          title: Text(
            parameter[index],
            style: Styles.textStyle16,
          ),
        ),
      ),
    );
  }
}
