import 'package:advanced_news_app/Features/parameters/data/local_data.dart';
import 'package:flutter/material.dart';
import 'service_locator.dart';
import '../../Features/home/data/models/news_model/news_model.dart';
import '../../Features/home/data/repos/news_repo.dart';
import '../../Features/home/presentation/view_model/news_cubit/news_cubit.dart';
import '../../Features/home/presentation/views/home_view.dart';
import '../../Features/home/presentation/views/news_details_view.dart';
import '../../Features/parameters/presentation/views/category_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Features/parameters/presentation/views/country_view.dart';
import '../../Features/splash/presentation/views/splash_view.dart';

class AppRouter {
  //! Routes Name
  static const String splashRoute = '/';
  static String countryRoute = '/countryView';
  static String categoryRoute = '/categoryView';
  static String viewRoute = '/homeView';
  static String detailsRoute = '/detailsView';
  //! Generate Routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashView());

      case '/countryView':
        return MaterialPageRoute(
          builder: (context) => const CountryView(),
        );

      case '/categoryView':
        return MaterialPageRoute(
          builder: (context) => CategoryView(
            country: countryName,
          ),
        );

      case '/homeView':
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => NewsCubit(getIt.get<NewsRepo>()),
            child: const HomeView(),
          ),
        );

      case '/detailsView':
        var args = settings.arguments as NewsModel;
        return MaterialPageRoute(
          builder: (context) => NewsDetailsView(
            newsModel: args,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text("No Route Found!"),
              ),
            );
          },
        );
    }
  }
}
