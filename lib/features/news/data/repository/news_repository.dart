import '../../domain/models/news_model.dart';
import '../../domain/repository/news_repository.dart';
import '../datasource/news_remote_datasourse.dart';
import '../dto/news_dto.dart';

class NewsRepositoryImpl implements NewsRepository {
  final NewsRemoteDataSource _remoteDataSource;

  NewsRepositoryImpl(this._remoteDataSource);

  @override
  Future<NewsResponse> getTopHeadlines({
    String? country,
    String? category,
    String? sources,
    String? query,
    int? pageSize,
    int? page,
  }) async {
    final response = await _remoteDataSource.getTopHeadlines(
      country: country,
      category: category,
      sources: sources,
      query: query,
      pageSize: pageSize,
      page: page,
    );
    return response.toModel();
  }

  @override
  Future<NewsResponse> getEverything({
    String? query,
    String? searchIn,
    String? sources,
    String? domains,
    String? excludeDomains,
    String? from,
    String? to,
    String? language,
    String? sortBy,
    int? pageSize,
    int? page,
  }) async {
    final response = await _remoteDataSource.getEverything(
      query: query,
      searchIn: searchIn,
      sources: sources,
      domains: domains,
      excludeDomains: excludeDomains,
      from: from,
      to: to,
      language: language,
      sortBy: sortBy,
      pageSize: pageSize,
      page: page,
    );
    return response.toModel();
  }
}
