// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String country, String? category, int pageSize, int page)
        loadTopHeadlines,
    required TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)
        loadEverything,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult? Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTopHeadlinesEvent value) loadTopHeadlines,
    required TResult Function(LoadEverythingEvent value) loadEverything,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(RefreshEvent value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult? Function(LoadEverythingEvent value)? loadEverything,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(RefreshEvent value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult Function(LoadEverythingEvent value)? loadEverything,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(RefreshEvent value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadTopHeadlinesEventImplCopyWith<$Res> {
  factory _$$LoadTopHeadlinesEventImplCopyWith(
          _$LoadTopHeadlinesEventImpl value,
          $Res Function(_$LoadTopHeadlinesEventImpl) then) =
      __$$LoadTopHeadlinesEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String country, String? category, int pageSize, int page});
}

/// @nodoc
class __$$LoadTopHeadlinesEventImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$LoadTopHeadlinesEventImpl>
    implements _$$LoadTopHeadlinesEventImplCopyWith<$Res> {
  __$$LoadTopHeadlinesEventImplCopyWithImpl(_$LoadTopHeadlinesEventImpl _value,
      $Res Function(_$LoadTopHeadlinesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
    Object? category = freezed,
    Object? pageSize = null,
    Object? page = null,
  }) {
    return _then(_$LoadTopHeadlinesEventImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadTopHeadlinesEventImpl implements LoadTopHeadlinesEvent {
  const _$LoadTopHeadlinesEventImpl(
      {this.country = 'us', this.category, this.pageSize = 20, this.page = 1});

  @override
  @JsonKey()
  final String country;
  @override
  final String? category;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'NewsEvent.loadTopHeadlines(country: $country, category: $category, pageSize: $pageSize, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTopHeadlinesEventImpl &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, country, category, pageSize, page);

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadTopHeadlinesEventImplCopyWith<_$LoadTopHeadlinesEventImpl>
      get copyWith => __$$LoadTopHeadlinesEventImplCopyWithImpl<
          _$LoadTopHeadlinesEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String country, String? category, int pageSize, int page)
        loadTopHeadlines,
    required TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)
        loadEverything,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return loadTopHeadlines(country, category, pageSize, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult? Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
  }) {
    return loadTopHeadlines?.call(country, category, pageSize, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (loadTopHeadlines != null) {
      return loadTopHeadlines(country, category, pageSize, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTopHeadlinesEvent value) loadTopHeadlines,
    required TResult Function(LoadEverythingEvent value) loadEverything,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(RefreshEvent value) refresh,
  }) {
    return loadTopHeadlines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult? Function(LoadEverythingEvent value)? loadEverything,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(RefreshEvent value)? refresh,
  }) {
    return loadTopHeadlines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult Function(LoadEverythingEvent value)? loadEverything,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (loadTopHeadlines != null) {
      return loadTopHeadlines(this);
    }
    return orElse();
  }
}

abstract class LoadTopHeadlinesEvent implements NewsEvent {
  const factory LoadTopHeadlinesEvent(
      {final String country,
      final String? category,
      final int pageSize,
      final int page}) = _$LoadTopHeadlinesEventImpl;

  String get country;
  String? get category;
  int get pageSize;
  int get page;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadTopHeadlinesEventImplCopyWith<_$LoadTopHeadlinesEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadEverythingEventImplCopyWith<$Res> {
  factory _$$LoadEverythingEventImplCopyWith(_$LoadEverythingEventImpl value,
          $Res Function(_$LoadEverythingEventImpl) then) =
      __$$LoadEverythingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String query, String? language, String? sortBy, int pageSize, int page});
}

/// @nodoc
class __$$LoadEverythingEventImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$LoadEverythingEventImpl>
    implements _$$LoadEverythingEventImplCopyWith<$Res> {
  __$$LoadEverythingEventImplCopyWithImpl(_$LoadEverythingEventImpl _value,
      $Res Function(_$LoadEverythingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? language = freezed,
    Object? sortBy = freezed,
    Object? pageSize = null,
    Object? page = null,
  }) {
    return _then(_$LoadEverythingEventImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      sortBy: freezed == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadEverythingEventImpl implements LoadEverythingEvent {
  const _$LoadEverythingEventImpl(
      {required this.query,
      this.language,
      this.sortBy,
      this.pageSize = 20,
      this.page = 1});

  @override
  final String query;
  @override
  final String? language;
  @override
  final String? sortBy;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'NewsEvent.loadEverything(query: $query, language: $language, sortBy: $sortBy, pageSize: $pageSize, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEverythingEventImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, query, language, sortBy, pageSize, page);

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEverythingEventImplCopyWith<_$LoadEverythingEventImpl> get copyWith =>
      __$$LoadEverythingEventImplCopyWithImpl<_$LoadEverythingEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String country, String? category, int pageSize, int page)
        loadTopHeadlines,
    required TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)
        loadEverything,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return loadEverything(query, language, sortBy, pageSize, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult? Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
  }) {
    return loadEverything?.call(query, language, sortBy, pageSize, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (loadEverything != null) {
      return loadEverything(query, language, sortBy, pageSize, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTopHeadlinesEvent value) loadTopHeadlines,
    required TResult Function(LoadEverythingEvent value) loadEverything,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(RefreshEvent value) refresh,
  }) {
    return loadEverything(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult? Function(LoadEverythingEvent value)? loadEverything,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(RefreshEvent value)? refresh,
  }) {
    return loadEverything?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult Function(LoadEverythingEvent value)? loadEverything,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (loadEverything != null) {
      return loadEverything(this);
    }
    return orElse();
  }
}

abstract class LoadEverythingEvent implements NewsEvent {
  const factory LoadEverythingEvent(
      {required final String query,
      final String? language,
      final String? sortBy,
      final int pageSize,
      final int page}) = _$LoadEverythingEventImpl;

  String get query;
  String? get language;
  String? get sortBy;
  int get pageSize;
  int get page;

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadEverythingEventImplCopyWith<_$LoadEverythingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreEventImplCopyWith<$Res> {
  factory _$$LoadMoreEventImplCopyWith(
          _$LoadMoreEventImpl value, $Res Function(_$LoadMoreEventImpl) then) =
      __$$LoadMoreEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreEventImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$LoadMoreEventImpl>
    implements _$$LoadMoreEventImplCopyWith<$Res> {
  __$$LoadMoreEventImplCopyWithImpl(
      _$LoadMoreEventImpl _value, $Res Function(_$LoadMoreEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreEventImpl implements LoadMoreEvent {
  const _$LoadMoreEventImpl();

  @override
  String toString() {
    return 'NewsEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String country, String? category, int pageSize, int page)
        loadTopHeadlines,
    required TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)
        loadEverything,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult? Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTopHeadlinesEvent value) loadTopHeadlines,
    required TResult Function(LoadEverythingEvent value) loadEverything,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(RefreshEvent value) refresh,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult? Function(LoadEverythingEvent value)? loadEverything,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(RefreshEvent value)? refresh,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult Function(LoadEverythingEvent value)? loadEverything,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMoreEvent implements NewsEvent {
  const factory LoadMoreEvent() = _$LoadMoreEventImpl;
}

/// @nodoc
abstract class _$$RefreshEventImplCopyWith<$Res> {
  factory _$$RefreshEventImplCopyWith(
          _$RefreshEventImpl value, $Res Function(_$RefreshEventImpl) then) =
      __$$RefreshEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshEventImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$RefreshEventImpl>
    implements _$$RefreshEventImplCopyWith<$Res> {
  __$$RefreshEventImplCopyWithImpl(
      _$RefreshEventImpl _value, $Res Function(_$RefreshEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RefreshEventImpl implements RefreshEvent {
  const _$RefreshEventImpl();

  @override
  String toString() {
    return 'NewsEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String country, String? category, int pageSize, int page)
        loadTopHeadlines,
    required TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)
        loadEverything,
    required TResult Function() loadMore,
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult? Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult? Function()? loadMore,
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String country, String? category, int pageSize, int page)?
        loadTopHeadlines,
    TResult Function(String query, String? language, String? sortBy,
            int pageSize, int page)?
        loadEverything,
    TResult Function()? loadMore,
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadTopHeadlinesEvent value) loadTopHeadlines,
    required TResult Function(LoadEverythingEvent value) loadEverything,
    required TResult Function(LoadMoreEvent value) loadMore,
    required TResult Function(RefreshEvent value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult? Function(LoadEverythingEvent value)? loadEverything,
    TResult? Function(LoadMoreEvent value)? loadMore,
    TResult? Function(RefreshEvent value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadTopHeadlinesEvent value)? loadTopHeadlines,
    TResult Function(LoadEverythingEvent value)? loadEverything,
    TResult Function(LoadMoreEvent value)? loadMore,
    TResult Function(RefreshEvent value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class RefreshEvent implements NewsEvent {
  const factory RefreshEvent() = _$RefreshEventImpl;
}
