import '../../data/models/news_model/news_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.newsModel, this.borderRadius, this.height});
  final NewsModel newsModel;
  final BorderRadius? borderRadius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(7),
      child: Container(
        width: double.infinity,
        height: height ?? 180.h,
        decoration: BoxDecoration(
          color: Colors.grey[200],
        ),
        child: CachedNetworkImage(
          imageUrl: "${newsModel.urlToImage}",
          fit: BoxFit.fill,
          errorWidget: (context, url, error) {
            return Icon(
              Icons.error_outline_rounded,
              size: 30,
              color: Colors.grey[700],
            );
          },
        ),
      ),
    );
  }
}
