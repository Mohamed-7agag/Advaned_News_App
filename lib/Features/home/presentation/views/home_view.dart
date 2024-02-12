import 'package:advanced_news_app/Features/parameters/data/local_data.dart';
import '../view_model/news_cubit/news_cubit.dart';
import '../widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BlocProvider.of<NewsCubit>(context).fetchNews(
      country: countryName,
      category: categoryName,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
