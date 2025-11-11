// ignore_for_file: avoid_catching_errors, depend_on_referenced_packages

import 'dart:developer' as dev;
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';

class ErrorData {
  final ErrorType type;
  final String? message;
  final StackTrace stackTrace;
  final dynamic responseData;

  ErrorData({
    required this.type,
    this.message,
    required this.stackTrace,
    this.responseData,
  });

  bool get isNotFount => type == ErrorType.notFount;

  bool get isNoInternet => type == ErrorType.noInternet;
}

enum ErrorType {
  noInternet,
  serverError,
  unknownError,
  timeout,
  notFount,
  argumentError;

  bool get isNonInternet => this != ErrorType.noInternet;

  String getTitle() {
    switch (this) {
      case ErrorType.noInternet:
        return 'No Internet Connection';
      case ErrorType.serverError:
        return 'Technical Issues';
      case ErrorType.unknownError:
        return 'Something Went Wrong';
      case ErrorType.timeout:
        return 'Slow Loading';
      case ErrorType.argumentError:
        return 'Data Loading Error';
      case ErrorType.notFount:
        return 'Not Found';
    }
  }

  String getDescription() {
    switch (this) {
      case ErrorType.noInternet:
        return 'Internet Connection Issue';
      case ErrorType.serverError:
      case ErrorType.unknownError:
        return 'General Error Message';
      case ErrorType.timeout:
        return 'Slow Data Loading';
      case ErrorType.argumentError:
        return 'Data Processing Error';
      case ErrorType.notFount:
        return 'Not Found';
    }
  }

  String getButtonLabel() {
    switch (this) {
      case ErrorType.noInternet:
        return 'Try Again';
      case ErrorType.unknownError:
      case ErrorType.timeout:
        return 'Reload';
      case ErrorType.serverError:
      case ErrorType.argumentError:
        return 'Update';
      case ErrorType.notFount:
        return 'Back';
    }
  }
}

abstract class AbstractBloc<T, S> extends Bloc<T, S> {
  AbstractBloc(super.initialState);

  Future<void> request<R>({
    required Future<R> Function() request,
    void Function(R)? onResponse,
    void Function(ErrorData)? onError,
    void Function()? onLoading,
  }) async {
    ErrorData? errorData;
    try {
      onLoading?.call();
      await request.call().then((value) => onResponse?.call(value));
    } on DioException catch (e, st) {
      if (e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        errorData = ErrorData(type: ErrorType.timeout, stackTrace: st);
        onError?.call(errorData);
        return;
      } else if (e.type == DioExceptionType.connectionError) {
        errorData = ErrorData(type: ErrorType.noInternet, stackTrace: st);
        onError?.call(errorData);
        return;
      } else if (e.response?.statusCode == 200) {
        errorData = ErrorData(type: ErrorType.argumentError, stackTrace: st);
        onError?.call(errorData);
        return;
      } else if (e.response?.statusCode == 500) {
        errorData = ErrorData(
          type: ErrorType.serverError,
          message: e.response?.data['messages']?[0],
          stackTrace: st,
        );
        onError?.call(errorData);
        return;
      } else if (e.response?.statusCode == 403 ||
          e.response?.statusCode == 400) {
        errorData = ErrorData(
          type: ErrorType.argumentError,
          message: e.response?.data['messages']?[0],
          stackTrace: st,
          responseData: e.response?.data,
        );
        onError?.call(errorData);
        return;
      } else if (e.response?.statusCode == 404) {
        errorData = ErrorData(
          type: ErrorType.notFount,
          message: e.response?.data['messages']?[0],
          stackTrace: st,
        );
        onError?.call(errorData);
        return;
      } else {
        String? message;
        if (e.response?.data != null &&
            e.response?.data is Map &&
            e.response?.data['messages'] != null &&
            e.response?.data['messages'] is List &&
            (e.response?.data['messages'] as List).isNotEmpty) {
          message = e.response?.data['messages'][0];
        }
        errorData = ErrorData(
          type: ErrorType.serverError,
          message: message,
          stackTrace: st,
        );
        onError?.call(errorData);
        return;
      }
    } on FormatException catch (e, st) {
      errorData = ErrorData(type: ErrorType.argumentError, stackTrace: st);
      onError?.call(errorData);
      return;
    } on TypeError catch (e, st) {
      errorData = ErrorData(type: ErrorType.argumentError, stackTrace: st);
      onError?.call(errorData);
      return;
    } on ArgumentError catch (e, st) {
      dev.log('ArgumentError: ${e.message}');
      errorData = ErrorData(type: ErrorType.argumentError, stackTrace: st);
      onError?.call(errorData);
      return;
    } on SocketException catch (e, st) {
      dev.log('SocketException: ${e.message}');
      errorData = ErrorData(type: ErrorType.noInternet, stackTrace: st);
      onError?.call(errorData);
      return;
    } catch (e, st) {
      errorData = ErrorData(
        type: ErrorType.unknownError,
        message: e.toString(),
        stackTrace: st,
      );
      onError?.call(errorData);
    } finally {
      if (errorData != null) {
        dev.log(errorData.stackTrace.toString());
        dev.log(errorData.type.toString());
        dev.log(errorData.message ?? '');
      }
    }
  }
}
