import '../../../../Core/widgets/error_widget.dart';
import '../../../../Core/widgets/loading_widget.dart';
import '../view_model/news_cubit/news_cubit.dart';
import 'home_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeListView extends StatelessWidget {
  const HomeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is NewsSuccess) {
          return ListView.builder(
            itemCount: state.news.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 4,top: 10),
                child: HomeListViewItem(
                  newsModel: state.news[index],
                ),
              );
            },
          );
        } else if (state is NewsFailure) {
          return const NewsErrorWidget();
        } else {
          return const LoadingWidget();
        }
      },
    );
  }
}
