import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import '../../features/news/data/datasource/news_remote_datasourse.dart';
import '../../features/news/data/repository/news_repository.dart';
import '../../features/news/domain/repository/news_repository.dart';
import '../../features/news/presentation/bloc/news_bloc.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Load environment variables
  await dotenv.load(fileName: ".env");

  // Dio
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(BaseOptions(
      baseUrl: dotenv.env['NEWS_API_BASE_URL'] ?? 'https://newsapi.org/v2',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ));

    // Add API key interceptor
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters['apiKey'] =
            dotenv.env['NEWS_API_KEY'] ?? '';
        return handler.next(options);
      },
    ));

    // Add logging interceptor (optional, for debugging)
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));

    return dio;
  });

  // Data sources
  getIt.registerLazySingleton<NewsRemoteDataSource>(
    () => NewsRemoteDataSource(getIt<Dio>()),
  );

  // Repositories
  getIt.registerLazySingleton<NewsRepository>(
    () => NewsRepositoryImpl(getIt<NewsRemoteDataSource>()),
  );

  // BLoCs
  getIt.registerFactory<NewsBloc>(
    () => NewsBloc(getIt<NewsRepository>()),
  );
}
