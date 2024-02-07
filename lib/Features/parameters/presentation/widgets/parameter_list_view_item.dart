import 'package:advanced_news_app/Features/parameters/data/local_data.dart';

import 'package:go_router/go_router.dart';

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
          GoRouter.of(context).push('/categoryView', extra: countryName);
        } else {
          categoryName = categories[index];
          GoRouter.of(context).push('/homeView');
        }
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 245, 245, 245)),
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
