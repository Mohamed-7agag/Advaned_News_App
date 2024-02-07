import '../utils/styles.dart';
import 'package:flutter/material.dart';

class NewsErrorWidget extends StatelessWidget {
  const NewsErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Something Went Wrong",
        style: Styles.textStyle20,
      ),
    );
  }
}
