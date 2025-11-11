import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_event.freezed.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.loadTopHeadlines({
    @Default('us') String country,
    String? category,
    @Default(20) int pageSize,
    @Default(1) int page,
  }) = LoadTopHeadlinesEvent;

  const factory NewsEvent.loadEverything({
    required String query,
    String? language,
    String? sortBy,
    @Default(20) int pageSize,
    @Default(1) int page,
  }) = LoadEverythingEvent;

  const factory NewsEvent.loadMore() = LoadMoreEvent;

  const factory NewsEvent.refresh() = RefreshEvent;
}
