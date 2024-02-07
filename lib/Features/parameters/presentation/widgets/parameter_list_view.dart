import 'parameter_list_view_item.dart';
import 'package:flutter/material.dart';

class ParameterListView extends StatelessWidget {
  const ParameterListView({super.key, required this.parameter});
  final List parameter;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: parameter.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 7),
          child: ParameterListViewItem(
            index: index,
            parameter: parameter,
          ),
        );
      },
    );
  }
}
