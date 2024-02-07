import '../../../../Core/utils/constant.dart';
import '../../../../Core/utils/custom_url_launcher.dart';
import '../../../../Core/utils/styles.dart';
import '../../data/models/news_model/news_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailsTextSection extends StatelessWidget {
  const DetailsTextSection({super.key, required this.newsModel});
  final NewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Name of Article :",
            style: Styles.textStyle20,
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              newsModel.source!.name ?? "Unknown",
              style: Styles.textStyle16,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Author :",
            style: Styles.textStyle20,
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              newsModel.author ?? 'Unknown',
              style: Styles.textStyle16,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "Title :",
            style: Styles.textStyle20,
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              newsModel.title!,
              style: Styles.textStyle16,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            "Description :",
            style: Styles.textStyle20,
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              newsModel.description ?? "Sorry, No description for this article",
              style: Styles.textStyle16,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          TextButton(
            onPressed: () {
              customUrlLauncher(context, newsModel.url);
            },
            style: TextButton.styleFrom(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Visit the site",
                  style: Styles.textStyle20.copyWith(color: kPrimaryColor),
                ),
                SizedBox(
                  width: 5.w,
                ),
                const Icon(
                  Icons.arrow_forward_rounded,
                  size: 22,
                  color: kPrimaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
