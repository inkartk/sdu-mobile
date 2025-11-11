import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/bloc/abstract_bloc.dart';
import '../../domain/models/news_model.dart';
import '../../domain/repository/news_repository.dart';
import 'news_event.dart';
import 'news_state.dart';

class NewsBloc extends AbstractBloc<NewsEvent, NewsState> {
  final NewsRepository _repository;

  String? _currentCountry;
  String? _currentCategory;
  String? _currentQuery;
  String? _currentLanguage;
  String? _currentSortBy;
  bool _isTopHeadlines = true;
  List<NewsModel> _allArticles = [];

  NewsBloc(this._repository) : super(const NewsState.initial()) {
    on<LoadTopHeadlinesEvent>(_onLoadTopHeadlines);
    on<LoadEverythingEvent>(_onLoadEverything);
    on<LoadMoreEvent>(_onLoadMore);
    on<RefreshEvent>(_onRefresh);
  }

  Future<void> _onLoadTopHeadlines(
    LoadTopHeadlinesEvent event,
    Emitter<NewsState> emit,
  ) async {
    _isTopHeadlines = true;
    _currentCountry = event.country;
    _currentCategory = event.category;
    _allArticles = [];

    await request<NewsResponse>(
      request: () => _repository.getTopHeadlines(
        country: event.country,
        category: event.category,
        pageSize: event.pageSize,
        page: event.page,
      ),
      onLoading: () => emit(const NewsState.loading()),
      onResponse: (response) {
        _allArticles = response.articles;
        if (response.articles.isEmpty) {
          emit(const NewsState.empty());
        } else {
          emit(NewsState.loaded(
            articles: response.articles,
            totalResults: response.totalResults,
            currentPage: event.page,
            hasMore: response.articles.length >= event.pageSize,
          ));
        }
      },
      onError: (error) {
        emit(NewsState.error(
          message: error.message ?? error.type.getDescription(),
          stackTrace: error.stackTrace,
        ));
      },
    );
  }

  Future<void> _onLoadEverything(
    LoadEverythingEvent event,
    Emitter<NewsState> emit,
  ) async {
    _isTopHeadlines = false;
    _currentQuery = event.query;
    _currentLanguage = event.language;
    _currentSortBy = event.sortBy;
    _allArticles = [];

    await request<NewsResponse>(
      request: () => _repository.getEverything(
        query: event.query,
        language: event.language,
        sortBy: event.sortBy,
        pageSize: event.pageSize,
        page: event.page,
      ),
      onLoading: () => emit(const NewsState.loading()),
      onResponse: (response) {
        _allArticles = response.articles;
        if (response.articles.isEmpty) {
          emit(const NewsState.empty());
        } else {
          emit(NewsState.loaded(
            articles: response.articles,
            totalResults: response.totalResults,
            currentPage: event.page,
            hasMore: response.articles.length >= event.pageSize,
          ));
        }
      },
      onError: (error) {
        emit(NewsState.error(
          message: error.message ?? error.type.getDescription(),
          stackTrace: error.stackTrace,
        ));
      },
    );
  }

  Future<void> _onLoadMore(
    LoadMoreEvent event,
    Emitter<NewsState> emit,
  ) async {
    final currentState = state;
    if (currentState is! NewsLoadedState || !currentState.hasMore) {
      return;
    }

    final nextPage = currentState.currentPage + 1;

    emit(NewsState.loadingMore(
      articles: _allArticles,
      currentPage: currentState.currentPage,
    ));

    await request<NewsResponse>(
      request: () {
        if (_isTopHeadlines) {
          return _repository.getTopHeadlines(
            country: _currentCountry,
            category: _currentCategory,
            pageSize: 20,
            page: nextPage,
          );
        } else {
          return _repository.getEverything(
            query: _currentQuery,
            language: _currentLanguage,
            sortBy: _currentSortBy,
            pageSize: 20,
            page: nextPage,
          );
        }
      },
      onResponse: (response) {
        _allArticles.addAll(response.articles);
        emit(NewsState.loaded(
          articles: _allArticles,
          totalResults: response.totalResults,
          currentPage: nextPage,
          hasMore: response.articles.length >= 20,
        ));
      },
      onError: (error) {
        emit(NewsState.loaded(
          articles: _allArticles,
          totalResults: currentState.totalResults,
          currentPage: currentState.currentPage,
          hasMore: false,
        ));
      },
    );
  }

  Future<void> _onRefresh(
    RefreshEvent event,
    Emitter<NewsState> emit,
  ) async {
    if (_isTopHeadlines) {
      add(NewsEvent.loadTopHeadlines(
        country: _currentCountry ?? 'us',
        category: _currentCategory,
      ));
    } else if (_currentQuery != null) {
      add(NewsEvent.loadEverything(
        query: _currentQuery!,
        language: _currentLanguage,
        sortBy: _currentSortBy,
      ));
    }
  }
}
