
import 'package:flutter/material.dart';
import 'home_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: HomeListView(),
    );
  }
}
