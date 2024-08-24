import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_interceptor.g.dart';

// * This file defines the AppInterceptor, which is a Dio interceptor that adds
// * an access key header to all requests.

class AppInterceptor extends QueuedInterceptor {
  AppInterceptor({required this.ref});

  final Ref ref;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers[tTextAccessKey] = tTextAccessCode;

    return handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    return handler.next(response);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    if (err.type == DioExceptionType.connectionTimeout) {
    } else if (err.type == DioExceptionType.receiveTimeout) {
    } else if (err.type == DioExceptionType.sendTimeout) {
    } else if (err.type == DioExceptionType.cancel) {
    } else if (err.type == DioExceptionType.badResponse) {
    } else {}
    return handler.next(err);
  }
}

@Riverpod(keepAlive: true)
AppInterceptor appInterceptor(AppInterceptorRef ref) {
  return AppInterceptor(ref: ref);
}
