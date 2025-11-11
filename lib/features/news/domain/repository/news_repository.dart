import '../models/news_model.dart';

abstract class NewsRepository {
  /// Get top headlines by country
  Future<NewsResponse> getTopHeadlines({
    String? country,
    String? category,
    String? sources,
    String? query,
    int? pageSize,
    int? page,
  });

  /// Search through millions of articles
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
  });
}
