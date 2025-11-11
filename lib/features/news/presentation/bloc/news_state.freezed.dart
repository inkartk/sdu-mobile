// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsModel> articles, int currentPage)
        loadingMore,
    required TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)
        loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult? Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadingMoreState value) loadingMore,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(NewsErrorState value) error,
    required TResult Function(NewsEmptyState value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadingMoreState value)? loadingMore,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(NewsErrorState value)? error,
    TResult? Function(NewsEmptyState value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadingMoreState value)? loadingMore,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(NewsErrorState value)? error,
    TResult Function(NewsEmptyState value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NewsInitialStateImplCopyWith<$Res> {
  factory _$$NewsInitialStateImplCopyWith(_$NewsInitialStateImpl value,
          $Res Function(_$NewsInitialStateImpl) then) =
      __$$NewsInitialStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsInitialStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsInitialStateImpl>
    implements _$$NewsInitialStateImplCopyWith<$Res> {
  __$$NewsInitialStateImplCopyWithImpl(_$NewsInitialStateImpl _value,
      $Res Function(_$NewsInitialStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewsInitialStateImpl implements NewsInitialState {
  const _$NewsInitialStateImpl();

  @override
  String toString() {
    return 'NewsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsInitialStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsModel> articles, int currentPage)
        loadingMore,
    required TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)
        loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult? Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadingMoreState value) loadingMore,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(NewsErrorState value) error,
    required TResult Function(NewsEmptyState value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadingMoreState value)? loadingMore,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(NewsErrorState value)? error,
    TResult? Function(NewsEmptyState value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadingMoreState value)? loadingMore,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(NewsErrorState value)? error,
    TResult Function(NewsEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NewsInitialState implements NewsState {
  const factory NewsInitialState() = _$NewsInitialStateImpl;
}

/// @nodoc
abstract class _$$NewsLoadingStateImplCopyWith<$Res> {
  factory _$$NewsLoadingStateImplCopyWith(_$NewsLoadingStateImpl value,
          $Res Function(_$NewsLoadingStateImpl) then) =
      __$$NewsLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsLoadingStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsLoadingStateImpl>
    implements _$$NewsLoadingStateImplCopyWith<$Res> {
  __$$NewsLoadingStateImplCopyWithImpl(_$NewsLoadingStateImpl _value,
      $Res Function(_$NewsLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewsLoadingStateImpl implements NewsLoadingState {
  const _$NewsLoadingStateImpl();

  @override
  String toString() {
    return 'NewsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsModel> articles, int currentPage)
        loadingMore,
    required TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)
        loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult? Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadingMoreState value) loadingMore,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(NewsErrorState value) error,
    required TResult Function(NewsEmptyState value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadingMoreState value)? loadingMore,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(NewsErrorState value)? error,
    TResult? Function(NewsEmptyState value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadingMoreState value)? loadingMore,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(NewsErrorState value)? error,
    TResult Function(NewsEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewsLoadingState implements NewsState {
  const factory NewsLoadingState() = _$NewsLoadingStateImpl;
}

/// @nodoc
abstract class _$$NewsLoadingMoreStateImplCopyWith<$Res> {
  factory _$$NewsLoadingMoreStateImplCopyWith(_$NewsLoadingMoreStateImpl value,
          $Res Function(_$NewsLoadingMoreStateImpl) then) =
      __$$NewsLoadingMoreStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NewsModel> articles, int currentPage});
}

/// @nodoc
class __$$NewsLoadingMoreStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsLoadingMoreStateImpl>
    implements _$$NewsLoadingMoreStateImplCopyWith<$Res> {
  __$$NewsLoadingMoreStateImplCopyWithImpl(_$NewsLoadingMoreStateImpl _value,
      $Res Function(_$NewsLoadingMoreStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? currentPage = null,
  }) {
    return _then(_$NewsLoadingMoreStateImpl(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NewsLoadingMoreStateImpl implements NewsLoadingMoreState {
  const _$NewsLoadingMoreStateImpl(
      {required final List<NewsModel> articles, required this.currentPage})
      : _articles = articles;

  final List<NewsModel> _articles;
  @override
  List<NewsModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final int currentPage;

  @override
  String toString() {
    return 'NewsState.loadingMore(articles: $articles, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsLoadingMoreStateImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_articles), currentPage);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsLoadingMoreStateImplCopyWith<_$NewsLoadingMoreStateImpl>
      get copyWith =>
          __$$NewsLoadingMoreStateImplCopyWithImpl<_$NewsLoadingMoreStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsModel> articles, int currentPage)
        loadingMore,
    required TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)
        loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return loadingMore(articles, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult? Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return loadingMore?.call(articles, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(articles, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadingMoreState value) loadingMore,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(NewsErrorState value) error,
    required TResult Function(NewsEmptyState value) empty,
  }) {
    return loadingMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadingMoreState value)? loadingMore,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(NewsErrorState value)? error,
    TResult? Function(NewsEmptyState value)? empty,
  }) {
    return loadingMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadingMoreState value)? loadingMore,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(NewsErrorState value)? error,
    TResult Function(NewsEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (loadingMore != null) {
      return loadingMore(this);
    }
    return orElse();
  }
}

abstract class NewsLoadingMoreState implements NewsState {
  const factory NewsLoadingMoreState(
      {required final List<NewsModel> articles,
      required final int currentPage}) = _$NewsLoadingMoreStateImpl;

  List<NewsModel> get articles;
  int get currentPage;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsLoadingMoreStateImplCopyWith<_$NewsLoadingMoreStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsLoadedStateImplCopyWith<$Res> {
  factory _$$NewsLoadedStateImplCopyWith(_$NewsLoadedStateImpl value,
          $Res Function(_$NewsLoadedStateImpl) then) =
      __$$NewsLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<NewsModel> articles,
      int totalResults,
      int currentPage,
      bool hasMore});
}

/// @nodoc
class __$$NewsLoadedStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsLoadedStateImpl>
    implements _$$NewsLoadedStateImplCopyWith<$Res> {
  __$$NewsLoadedStateImplCopyWithImpl(
      _$NewsLoadedStateImpl _value, $Res Function(_$NewsLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? totalResults = null,
    Object? currentPage = null,
    Object? hasMore = null,
  }) {
    return _then(_$NewsLoadedStateImpl(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NewsLoadedStateImpl implements NewsLoadedState {
  const _$NewsLoadedStateImpl(
      {required final List<NewsModel> articles,
      required this.totalResults,
      required this.currentPage,
      required this.hasMore})
      : _articles = articles;

  final List<NewsModel> _articles;
  @override
  List<NewsModel> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final int totalResults;
  @override
  final int currentPage;
  @override
  final bool hasMore;

  @override
  String toString() {
    return 'NewsState.loaded(articles: $articles, totalResults: $totalResults, currentPage: $currentPage, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsLoadedStateImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_articles),
      totalResults,
      currentPage,
      hasMore);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsLoadedStateImplCopyWith<_$NewsLoadedStateImpl> get copyWith =>
      __$$NewsLoadedStateImplCopyWithImpl<_$NewsLoadedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsModel> articles, int currentPage)
        loadingMore,
    required TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)
        loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return loaded(articles, totalResults, currentPage, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult? Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return loaded?.call(articles, totalResults, currentPage, hasMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(articles, totalResults, currentPage, hasMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadingMoreState value) loadingMore,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(NewsErrorState value) error,
    required TResult Function(NewsEmptyState value) empty,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadingMoreState value)? loadingMore,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(NewsErrorState value)? error,
    TResult? Function(NewsEmptyState value)? empty,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadingMoreState value)? loadingMore,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(NewsErrorState value)? error,
    TResult Function(NewsEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsLoadedState implements NewsState {
  const factory NewsLoadedState(
      {required final List<NewsModel> articles,
      required final int totalResults,
      required final int currentPage,
      required final bool hasMore}) = _$NewsLoadedStateImpl;

  List<NewsModel> get articles;
  int get totalResults;
  int get currentPage;
  bool get hasMore;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsLoadedStateImplCopyWith<_$NewsLoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsErrorStateImplCopyWith<$Res> {
  factory _$$NewsErrorStateImplCopyWith(_$NewsErrorStateImpl value,
          $Res Function(_$NewsErrorStateImpl) then) =
      __$$NewsErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, StackTrace? stackTrace});
}

/// @nodoc
class __$$NewsErrorStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsErrorStateImpl>
    implements _$$NewsErrorStateImplCopyWith<$Res> {
  __$$NewsErrorStateImplCopyWithImpl(
      _$NewsErrorStateImpl _value, $Res Function(_$NewsErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? stackTrace = freezed,
  }) {
    return _then(_$NewsErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      stackTrace: freezed == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$NewsErrorStateImpl implements NewsErrorState {
  const _$NewsErrorStateImpl({required this.message, this.stackTrace});

  @override
  final String message;
  @override
  final StackTrace? stackTrace;

  @override
  String toString() {
    return 'NewsState.error(message: $message, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsErrorStateImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, stackTrace);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsErrorStateImplCopyWith<_$NewsErrorStateImpl> get copyWith =>
      __$$NewsErrorStateImplCopyWithImpl<_$NewsErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsModel> articles, int currentPage)
        loadingMore,
    required TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)
        loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return error(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult? Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(message, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadingMoreState value) loadingMore,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(NewsErrorState value) error,
    required TResult Function(NewsEmptyState value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadingMoreState value)? loadingMore,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(NewsErrorState value)? error,
    TResult? Function(NewsEmptyState value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadingMoreState value)? loadingMore,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(NewsErrorState value)? error,
    TResult Function(NewsEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewsErrorState implements NewsState {
  const factory NewsErrorState(
      {required final String message,
      final StackTrace? stackTrace}) = _$NewsErrorStateImpl;

  String get message;
  StackTrace? get stackTrace;

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsErrorStateImplCopyWith<_$NewsErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsEmptyStateImplCopyWith<$Res> {
  factory _$$NewsEmptyStateImplCopyWith(_$NewsEmptyStateImpl value,
          $Res Function(_$NewsEmptyStateImpl) then) =
      __$$NewsEmptyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsEmptyStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsEmptyStateImpl>
    implements _$$NewsEmptyStateImplCopyWith<$Res> {
  __$$NewsEmptyStateImplCopyWithImpl(
      _$NewsEmptyStateImpl _value, $Res Function(_$NewsEmptyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewsEmptyStateImpl implements NewsEmptyState {
  const _$NewsEmptyStateImpl();

  @override
  String toString() {
    return 'NewsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsEmptyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<NewsModel> articles, int currentPage)
        loadingMore,
    required TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)
        loaded,
    required TResult Function(String message, StackTrace? stackTrace) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult? Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult? Function(String message, StackTrace? stackTrace)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<NewsModel> articles, int currentPage)? loadingMore,
    TResult Function(List<NewsModel> articles, int totalResults,
            int currentPage, bool hasMore)?
        loaded,
    TResult Function(String message, StackTrace? stackTrace)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsInitialState value) initial,
    required TResult Function(NewsLoadingState value) loading,
    required TResult Function(NewsLoadingMoreState value) loadingMore,
    required TResult Function(NewsLoadedState value) loaded,
    required TResult Function(NewsErrorState value) error,
    required TResult Function(NewsEmptyState value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsInitialState value)? initial,
    TResult? Function(NewsLoadingState value)? loading,
    TResult? Function(NewsLoadingMoreState value)? loadingMore,
    TResult? Function(NewsLoadedState value)? loaded,
    TResult? Function(NewsErrorState value)? error,
    TResult? Function(NewsEmptyState value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsInitialState value)? initial,
    TResult Function(NewsLoadingState value)? loading,
    TResult Function(NewsLoadingMoreState value)? loadingMore,
    TResult Function(NewsLoadedState value)? loaded,
    TResult Function(NewsErrorState value)? error,
    TResult Function(NewsEmptyState value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class NewsEmptyState implements NewsState {
  const factory NewsEmptyState() = _$NewsEmptyStateImpl;
}
