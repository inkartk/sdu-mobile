import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/news_model.dart';

part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

@freezed
class NewsDto with _$NewsDto {
  const factory NewsDto({
    required String title,
    required String? description,
    required String? author,
    required String url,
    required String? urlToImage,
    required String publishedAt,
    required String? content,
    required NewsSourceDto source,
  }) = _NewsDto;

  factory NewsDto.fromJson(Map<String, dynamic> json) =>
      _$NewsDtoFromJson(json);
}

extension NewsDtoX on NewsDto {
  NewsModel toModel() {
    return NewsModel(
      title: title,
      description: description,
      author: author,
      url: url,
      urlToImage: urlToImage,
      publishedAt: DateTime.parse(publishedAt),
      content: content,
      source: source.toModel(),
    );
  }
}

@freezed
class NewsSourceDto with _$NewsSourceDto {
  const factory NewsSourceDto({
    required String? id,
    required String name,
  }) = _NewsSourceDto;

  factory NewsSourceDto.fromJson(Map<String, dynamic> json) =>
      _$NewsSourceDtoFromJson(json);
}

extension NewsSourceDtoX on NewsSourceDto {
  NewsSource toModel() {
    return NewsSource(
      id: id,
      name: name,
    );
  }
}

@freezed
class NewsResponseDto with _$NewsResponseDto {
  const factory NewsResponseDto({
    required String status,
    required int totalResults,
    required List<NewsDto> articles,
  }) = _NewsResponseDto;

  factory NewsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseDtoFromJson(json);
}

extension NewsResponseDtoX on NewsResponseDto {
  NewsResponse toModel() {
    return NewsResponse(
      status: status,
      totalResults: totalResults,
      articles: articles.map((e) => e.toModel()).toList(),
    );
  }
}
