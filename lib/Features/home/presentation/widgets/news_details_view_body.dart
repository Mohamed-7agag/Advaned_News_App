import 'details_text_section.dart';
import 'image_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/news_model/news_model.dart';

class NewsDetailsViewBody extends StatelessWidget {
  const NewsDetailsViewBody({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageSection(
            newsModel: newsModel,
            height: 300.h,
            borderRadius: BorderRadius.circular(0),
          ),
          SizedBox(height: 10.h),
          DetailsTextSection(
            newsModel: newsModel,
          ),
        ],
      ),
    );
  }
}
