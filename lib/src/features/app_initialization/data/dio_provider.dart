import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/features/app_initialization/data/app_interceptor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

// * This file defines the dio provider, which is a Riverpod provider that
// * provides an instance of the Dio HTTP client.

@Riverpod(keepAlive: true)
Dio dio(DioRef ref) {
  return Dio(
    BaseOptions(
      baseUrl: tTextBaseUrlApi,
      receiveTimeout: const Duration(seconds: 5),
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 30),
      contentType: 'application/json',
    ),
  )..interceptors.addAll([
      ref.read(appInterceptorProvider),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
      ),
    ]);
}
