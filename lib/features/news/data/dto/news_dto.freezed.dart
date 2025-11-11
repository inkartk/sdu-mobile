// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewsDto _$NewsDtoFromJson(Map<String, dynamic> json) {
  return _NewsDto.fromJson(json);
}

/// @nodoc
mixin _$NewsDto {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String? get urlToImage => throw _privateConstructorUsedError;
  String get publishedAt => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  NewsSourceDto get source => throw _privateConstructorUsedError;

  /// Serializes this NewsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsDtoCopyWith<NewsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDtoCopyWith<$Res> {
  factory $NewsDtoCopyWith(NewsDto value, $Res Function(NewsDto) then) =
      _$NewsDtoCopyWithImpl<$Res, NewsDto>;
  @useResult
  $Res call(
      {String title,
      String? description,
      String? author,
      String url,
      String? urlToImage,
      String publishedAt,
      String? content,
      NewsSourceDto source});

  $NewsSourceDtoCopyWith<$Res> get source;
}

/// @nodoc
class _$NewsDtoCopyWithImpl<$Res, $Val extends NewsDto>
    implements $NewsDtoCopyWith<$Res> {
  _$NewsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? author = freezed,
    Object? url = null,
    Object? urlToImage = freezed,
    Object? publishedAt = null,
    Object? content = freezed,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSourceDto,
    ) as $Val);
  }

  /// Create a copy of NewsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NewsSourceDtoCopyWith<$Res> get source {
    return $NewsSourceDtoCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NewsDtoImplCopyWith<$Res> implements $NewsDtoCopyWith<$Res> {
  factory _$$NewsDtoImplCopyWith(
          _$NewsDtoImpl value, $Res Function(_$NewsDtoImpl) then) =
      __$$NewsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String? description,
      String? author,
      String url,
      String? urlToImage,
      String publishedAt,
      String? content,
      NewsSourceDto source});

  @override
  $NewsSourceDtoCopyWith<$Res> get source;
}

/// @nodoc
class __$$NewsDtoImplCopyWithImpl<$Res>
    extends _$NewsDtoCopyWithImpl<$Res, _$NewsDtoImpl>
    implements _$$NewsDtoImplCopyWith<$Res> {
  __$$NewsDtoImplCopyWithImpl(
      _$NewsDtoImpl _value, $Res Function(_$NewsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? author = freezed,
    Object? url = null,
    Object? urlToImage = freezed,
    Object? publishedAt = null,
    Object? content = freezed,
    Object? source = null,
  }) {
    return _then(_$NewsDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      urlToImage: freezed == urlToImage
          ? _value.urlToImage
          : urlToImage // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NewsSourceDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsDtoImpl implements _NewsDto {
  const _$NewsDtoImpl(
      {required this.title,
      required this.description,
      required this.author,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content,
      required this.source});

  factory _$NewsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final String? author;
  @override
  final String url;
  @override
  final String? urlToImage;
  @override
  final String publishedAt;
  @override
  final String? content;
  @override
  final NewsSourceDto source;

  @override
  String toString() {
    return 'NewsDto(title: $title, description: $description, author: $author, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, author, url,
      urlToImage, publishedAt, content, source);

  /// Create a copy of NewsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDtoImplCopyWith<_$NewsDtoImpl> get copyWith =>
      __$$NewsDtoImplCopyWithImpl<_$NewsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsDtoImplToJson(
      this,
    );
  }
}

abstract class _NewsDto implements NewsDto {
  const factory _NewsDto(
      {required final String title,
      required final String? description,
      required final String? author,
      required final String url,
      required final String? urlToImage,
      required final String publishedAt,
      required final String? content,
      required final NewsSourceDto source}) = _$NewsDtoImpl;

  factory _NewsDto.fromJson(Map<String, dynamic> json) = _$NewsDtoImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  String? get author;
  @override
  String get url;
  @override
  String? get urlToImage;
  @override
  String get publishedAt;
  @override
  String? get content;
  @override
  NewsSourceDto get source;

  /// Create a copy of NewsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsDtoImplCopyWith<_$NewsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsSourceDto _$NewsSourceDtoFromJson(Map<String, dynamic> json) {
  return _NewsSourceDto.fromJson(json);
}

/// @nodoc
mixin _$NewsSourceDto {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this NewsSourceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsSourceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsSourceDtoCopyWith<NewsSourceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsSourceDtoCopyWith<$Res> {
  factory $NewsSourceDtoCopyWith(
          NewsSourceDto value, $Res Function(NewsSourceDto) then) =
      _$NewsSourceDtoCopyWithImpl<$Res, NewsSourceDto>;
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class _$NewsSourceDtoCopyWithImpl<$Res, $Val extends NewsSourceDto>
    implements $NewsSourceDtoCopyWith<$Res> {
  _$NewsSourceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsSourceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsSourceDtoImplCopyWith<$Res>
    implements $NewsSourceDtoCopyWith<$Res> {
  factory _$$NewsSourceDtoImplCopyWith(
          _$NewsSourceDtoImpl value, $Res Function(_$NewsSourceDtoImpl) then) =
      __$$NewsSourceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class __$$NewsSourceDtoImplCopyWithImpl<$Res>
    extends _$NewsSourceDtoCopyWithImpl<$Res, _$NewsSourceDtoImpl>
    implements _$$NewsSourceDtoImplCopyWith<$Res> {
  __$$NewsSourceDtoImplCopyWithImpl(
      _$NewsSourceDtoImpl _value, $Res Function(_$NewsSourceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsSourceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$NewsSourceDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsSourceDtoImpl implements _NewsSourceDto {
  const _$NewsSourceDtoImpl({required this.id, required this.name});

  factory _$NewsSourceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsSourceDtoImplFromJson(json);

  @override
  final String? id;
  @override
  final String name;

  @override
  String toString() {
    return 'NewsSourceDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsSourceDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of NewsSourceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsSourceDtoImplCopyWith<_$NewsSourceDtoImpl> get copyWith =>
      __$$NewsSourceDtoImplCopyWithImpl<_$NewsSourceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsSourceDtoImplToJson(
      this,
    );
  }
}

abstract class _NewsSourceDto implements NewsSourceDto {
  const factory _NewsSourceDto(
      {required final String? id,
      required final String name}) = _$NewsSourceDtoImpl;

  factory _NewsSourceDto.fromJson(Map<String, dynamic> json) =
      _$NewsSourceDtoImpl.fromJson;

  @override
  String? get id;
  @override
  String get name;

  /// Create a copy of NewsSourceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsSourceDtoImplCopyWith<_$NewsSourceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NewsResponseDto _$NewsResponseDtoFromJson(Map<String, dynamic> json) {
  return _NewsResponseDto.fromJson(json);
}

/// @nodoc
mixin _$NewsResponseDto {
  String get status => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<NewsDto> get articles => throw _privateConstructorUsedError;

  /// Serializes this NewsResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NewsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsResponseDtoCopyWith<NewsResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsResponseDtoCopyWith<$Res> {
  factory $NewsResponseDtoCopyWith(
          NewsResponseDto value, $Res Function(NewsResponseDto) then) =
      _$NewsResponseDtoCopyWithImpl<$Res, NewsResponseDto>;
  @useResult
  $Res call({String status, int totalResults, List<NewsDto> articles});
}

/// @nodoc
class _$NewsResponseDtoCopyWithImpl<$Res, $Val extends NewsResponseDto>
    implements $NewsResponseDtoCopyWith<$Res> {
  _$NewsResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsResponseDtoImplCopyWith<$Res>
    implements $NewsResponseDtoCopyWith<$Res> {
  factory _$$NewsResponseDtoImplCopyWith(_$NewsResponseDtoImpl value,
          $Res Function(_$NewsResponseDtoImpl) then) =
      __$$NewsResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, int totalResults, List<NewsDto> articles});
}

/// @nodoc
class __$$NewsResponseDtoImplCopyWithImpl<$Res>
    extends _$NewsResponseDtoCopyWithImpl<$Res, _$NewsResponseDtoImpl>
    implements _$$NewsResponseDtoImplCopyWith<$Res> {
  __$$NewsResponseDtoImplCopyWithImpl(
      _$NewsResponseDtoImpl _value, $Res Function(_$NewsResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? articles = null,
  }) {
    return _then(_$NewsResponseDtoImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<NewsDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewsResponseDtoImpl implements _NewsResponseDto {
  const _$NewsResponseDtoImpl(
      {required this.status,
      required this.totalResults,
      required final List<NewsDto> articles})
      : _articles = articles;

  factory _$NewsResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewsResponseDtoImplFromJson(json);

  @override
  final String status;
  @override
  final int totalResults;
  final List<NewsDto> _articles;
  @override
  List<NewsDto> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'NewsResponseDto(status: $status, totalResults: $totalResults, articles: $articles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsResponseDtoImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_articles));

  /// Create a copy of NewsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsResponseDtoImplCopyWith<_$NewsResponseDtoImpl> get copyWith =>
      __$$NewsResponseDtoImplCopyWithImpl<_$NewsResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewsResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _NewsResponseDto implements NewsResponseDto {
  const factory _NewsResponseDto(
      {required final String status,
      required final int totalResults,
      required final List<NewsDto> articles}) = _$NewsResponseDtoImpl;

  factory _NewsResponseDto.fromJson(Map<String, dynamic> json) =
      _$NewsResponseDtoImpl.fromJson;

  @override
  String get status;
  @override
  int get totalResults;
  @override
  List<NewsDto> get articles;

  /// Create a copy of NewsResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsResponseDtoImplCopyWith<_$NewsResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
