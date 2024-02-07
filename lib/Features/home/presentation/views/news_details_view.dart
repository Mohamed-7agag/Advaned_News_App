import '../../data/models/news_model/news_model.dart';
import '../widgets/news_details_view_body.dart';
import 'package:flutter/material.dart';

class NewsDetailsView extends StatelessWidget {
  const NewsDetailsView({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NewsDetailsViewBody(
          newsModel: newsModel,
        ),
      ),
    );
  }
}
