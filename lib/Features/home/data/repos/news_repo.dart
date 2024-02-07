// ignore_for_file: deprecated_member_use

import 'package:advanced_news_app/Core/utils/api_services/api_service.dart';
import 'package:advanced_news_app/Core/utils/errors/exception.dart';
import 'package:dartz/dartz.dart';
import '../models/news_model/news_model.dart';

class NewsRepo {
  final ApiServices apiServices;

  NewsRepo({required this.apiServices});

  Future<Either<String, List<NewsModel>>> fetchNews(
      {required String category, required String country}) async {
    try {
      var data = await apiServices.get(category: category, country: country);
      List<NewsModel> articles = [];
      for (var item in data['articles']) {
        articles.add(NewsModel.fromJson(item));
      }
      return right(articles);
    } on ServerException catch (e) {
      return left(e.errModel.errorMessage);
    }
  }
}
