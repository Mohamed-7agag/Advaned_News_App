import '../../../../Core/utils/styles.dart';
import '../../data/models/news_model/news_model.dart';
import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.newsModel});
  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            newsModel.source!.name ?? "Unknown",
            style: Styles.textStyle20,
            maxLines: 1,
          ),
          Text(
            newsModel.title ?? "Sorry, No title for this news",
            style: Styles.textStyle16,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
