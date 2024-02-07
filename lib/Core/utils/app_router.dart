import 'package:advanced_news_app/Features/parameters/data/local_data.dart';
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
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: '/countryView',
        builder: (context, state) => const CountryView(),
      ),
      GoRoute(
        path: '/categoryView',
        builder: (context, state) => CategoryView(
          country: countryName,
        ),
      ),
      GoRoute(
        path: '/detailsView',
        builder: (context, state) => const NewsDetailsView(
          newsModel: NewsModel(),
        ),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => BlocProvider(
          create: (context) => NewsCubit(getIt.get<NewsRepo>()),
          child: const HomeView(),
        ),
      ),
    ],
  );
}
