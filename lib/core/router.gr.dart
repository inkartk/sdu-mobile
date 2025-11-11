// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:sdu/features/jobs/jobs/pages/jobs_page.dart' as _i2;
import 'package:sdu/features/jobs/login/pages/login_page.dart' as _i4;
import 'package:sdu/features/jobs/profession/pages/profession_page.dart' as _i8;
import 'package:sdu/features/mobile_education/info_page.dart' as _i1;
import 'package:sdu/features/mobile_education/login_education_page.dart' as _i3;
import 'package:sdu/features/mobile_education/register_page.dart' as _i9;
import 'package:sdu/features/mobile_education/reset_password_page.dart' as _i10;
import 'package:sdu/features/mobile_education/splash_page.dart' as _i11;
import 'package:sdu/features/navigation_page.dart' as _i5;
import 'package:sdu/features/news/domain/models/news_model.dart' as _i14;
import 'package:sdu/features/news/presentation/pages/new_detail_page.dart'
    as _i6;
import 'package:sdu/features/news/presentation/pages/news_page.dart' as _i7;

/// generated route for
/// [_i1.InfoPage]
class InfoRoute extends _i12.PageRouteInfo<void> {
  const InfoRoute({List<_i12.PageRouteInfo>? children})
    : super(InfoRoute.name, initialChildren: children);

  static const String name = 'InfoRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i1.InfoPage();
    },
  );
}

/// generated route for
/// [_i2.JobsPage]
class JobsRoute extends _i12.PageRouteInfo<void> {
  const JobsRoute({List<_i12.PageRouteInfo>? children})
    : super(JobsRoute.name, initialChildren: children);

  static const String name = 'JobsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.JobsPage();
    },
  );
}

/// generated route for
/// [_i3.LoginEducationPage]
class LoginEducationRoute extends _i12.PageRouteInfo<void> {
  const LoginEducationRoute({List<_i12.PageRouteInfo>? children})
    : super(LoginEducationRoute.name, initialChildren: children);

  static const String name = 'LoginEducationRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginEducationPage();
    },
  );
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginPage();
    },
  );
}

/// generated route for
/// [_i5.NavigationPage]
class NavigationRoute extends _i12.PageRouteInfo<void> {
  const NavigationRoute({List<_i12.PageRouteInfo>? children})
    : super(NavigationRoute.name, initialChildren: children);

  static const String name = 'NavigationRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.NavigationPage();
    },
  );
}

/// generated route for
/// [_i6.NewsDetailPage]
class NewsDetailRoute extends _i12.PageRouteInfo<NewsDetailRouteArgs> {
  NewsDetailRoute({
    _i13.Key? key,
    required _i14.NewsModel article,
    List<_i12.PageRouteInfo>? children,
  }) : super(
         NewsDetailRoute.name,
         args: NewsDetailRouteArgs(key: key, article: article),
         initialChildren: children,
       );

  static const String name = 'NewsDetailRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<NewsDetailRouteArgs>();
      return _i6.NewsDetailPage(key: args.key, article: args.article);
    },
  );
}

class NewsDetailRouteArgs {
  const NewsDetailRouteArgs({this.key, required this.article});

  final _i13.Key? key;

  final _i14.NewsModel article;

  @override
  String toString() {
    return 'NewsDetailRouteArgs{key: $key, article: $article}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! NewsDetailRouteArgs) return false;
    return key == other.key && article == other.article;
  }

  @override
  int get hashCode => key.hashCode ^ article.hashCode;
}

/// generated route for
/// [_i7.NewsPage]
class NewsRoute extends _i12.PageRouteInfo<void> {
  const NewsRoute({List<_i12.PageRouteInfo>? children})
    : super(NewsRoute.name, initialChildren: children);

  static const String name = 'NewsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.NewsPage();
    },
  );
}

/// generated route for
/// [_i8.ProfessionPage]
class ProfessionRoute extends _i12.PageRouteInfo<void> {
  const ProfessionRoute({List<_i12.PageRouteInfo>? children})
    : super(ProfessionRoute.name, initialChildren: children);

  static const String name = 'ProfessionRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.ProfessionPage();
    },
  );
}

/// generated route for
/// [_i9.RegisterPage]
class RegisterRoute extends _i12.PageRouteInfo<void> {
  const RegisterRoute({List<_i12.PageRouteInfo>? children})
    : super(RegisterRoute.name, initialChildren: children);

  static const String name = 'RegisterRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.RegisterPage();
    },
  );
}

/// generated route for
/// [_i10.ResetPasswordPage]
class ResetPasswordRoute extends _i12.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i12.PageRouteInfo>? children})
    : super(ResetPasswordRoute.name, initialChildren: children);

  static const String name = 'ResetPasswordRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.ResetPasswordPage();
    },
  );
}

/// generated route for
/// [_i11.SplashPage]
class SplashRoute extends _i12.PageRouteInfo<void> {
  const SplashRoute({List<_i12.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.SplashPage();
    },
  );
}
