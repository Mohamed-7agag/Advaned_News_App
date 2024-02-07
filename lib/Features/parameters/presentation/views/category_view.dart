import '../widgets/category_view_body.dart';
import 'package:flutter/material.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.country});
  final String country;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CategoryViewBody(),
      ),
    );
  }
}
