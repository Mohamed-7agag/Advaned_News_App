import '../../../data/models/news_model/news_model.dart';
import '../../../data/repos/news_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.newsRepo) : super(NewsInitial());
  final NewsRepo newsRepo;

  Future<void> fetchNews(
      {required String country, required String category}) async {
    emit(NewsLoading());
    var result = await newsRepo.fetchNews(category: category, country: country);
    result.fold((exception) {
      emit(NewsFailure(errMessage: exception.toString()));
    }, (news) {
      emit(NewsSuccess(news: news));
    });
  }
}
