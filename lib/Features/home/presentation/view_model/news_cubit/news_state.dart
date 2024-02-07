part of 'news_cubit.dart';

sealed class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class NewsFailure extends NewsState {
  final String errMessage;

  const NewsFailure({required this.errMessage});
}

final class NewsSuccess extends NewsState {
  final List<NewsModel> news;

  const NewsSuccess({required this.news});
}
