import 'api_services/api_service.dart';
import '../../Features/home/data/repos/news_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void newsServiceLoactor() {
  getIt.registerSingleton<NewsRepo>(
    NewsRepo(
      apiServices: ApiServices(
        Dio(),
      ),
    ),
  );
}
