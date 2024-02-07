import '../../data/models/news_model/news_model.dart';
import '../views/news_details_view.dart';
import 'image_section.dart';
import 'text_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeListViewItem extends StatelessWidget {
  const HomeListViewItem({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => NewsDetailsView(
              newsModel: newsModel,
            ),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 290.h,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageSection(newsModel: newsModel),
              SizedBox(
                height: 10.h,
              ),
              TextSection(
                newsModel: newsModel,
              )
            ],
          ),
        ),
      ),
    );
  }
}
