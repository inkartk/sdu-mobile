import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_model.freezed.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    required String title,
    required String? description,
    required String? author,
    required String url,
    required String? urlToImage,
    required DateTime publishedAt,
    required String? content,
    required NewsSource source,
  }) = _NewsModel;
}

@freezed
class NewsSource with _$NewsSource {
  const factory NewsSource({
    required String? id,
    required String name,
  }) = _NewsSource;
}

@freezed
class NewsResponse with _$NewsResponse {
  const factory NewsResponse({
    required String status,
    required int totalResults,
    required List<NewsModel> articles,
  }) = _NewsResponse;
}
