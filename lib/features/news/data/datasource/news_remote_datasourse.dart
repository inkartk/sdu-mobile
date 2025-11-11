import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/news_dto.dart';

part 'news_remote_datasourse.g.dart';

@RestApi()
abstract class NewsRemoteDataSource {
  factory NewsRemoteDataSource(Dio dio, {String baseUrl}) =
      _NewsRemoteDataSource;

  @GET('/top-headlines')
  Future<NewsResponseDto> getTopHeadlines({
    @Query('country') String? country,
    @Query('category') String? category,
    @Query('sources') String? sources,
    @Query('q') String? query,
    @Query('pageSize') int? pageSize,
    @Query('page') int? page,
  });

  @GET('/everything')
  Future<NewsResponseDto> getEverything({
    @Query('q') String? query,
    @Query('searchIn') String? searchIn,
    @Query('sources') String? sources,
    @Query('domains') String? domains,
    @Query('excludeDomains') String? excludeDomains,
    @Query('from') String? from,
    @Query('to') String? to,
    @Query('language') String? language,
    @Query('sortBy') String? sortBy,
    @Query('pageSize') int? pageSize,
    @Query('page') int? page,
  });
}
