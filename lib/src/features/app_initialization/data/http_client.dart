import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/features/app_initialization/data/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'http_client.g.dart';

// * This file defines the HttpClient, which is a wrapper around the Dio.
// *
// * The HttpClient provides a simple interface for making HTTP requests.

class HttpClient {
  HttpClient(this.ref) : _dio = ref.read(dioProvider);

  final Ref ref;

  late final Dio _dio;

  Future<Response<String>> request({
    required String url,
    required String method,
    Map<String, dynamic>? queryParameters,
    Object? body,
    Options? options,
  }) async {
    switch (method) {
      case tTextPost:
        return _dio.post(
          url,
          queryParameters: queryParameters,
          data: jsonEncode(body),
          options: options,
        );
      case tTextDelete:
        return _dio.delete(
          url,
          queryParameters: queryParameters,
          data: jsonEncode(body),
        );
      case tTextPut:
        return _dio.put(
          url,
          queryParameters: queryParameters,
          data: jsonEncode(body),
          options: options,
        );
      case tTextGet:
        return _dio.get(url, queryParameters: queryParameters);
      default:
        return _dio.get(url, queryParameters: queryParameters);
    }
  }
}

@Riverpod(keepAlive: true)
HttpClient httpClient(HttpClientRef ref) => HttpClient(ref);
