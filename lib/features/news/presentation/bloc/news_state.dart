import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/news_model.dart';

part 'news_state.freezed.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = NewsInitialState;

  const factory NewsState.loading() = NewsLoadingState;

  const factory NewsState.loadingMore({
    required List<NewsModel> articles,
    required int currentPage,
  }) = NewsLoadingMoreState;

  const factory NewsState.loaded({
    required List<NewsModel> articles,
    required int totalResults,
    required int currentPage,
    required bool hasMore,
  }) = NewsLoadedState;

  const factory NewsState.error({
    required String message,
    StackTrace? stackTrace,
  }) = NewsErrorState;

  const factory NewsState.empty() = NewsEmptyState;
}
