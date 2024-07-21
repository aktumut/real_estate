import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/api_paths.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/exceptions/error_logger.dart';
import 'package:real_estate/src/features/app_initialization/data/http_client.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'shop_repository.g.dart';

class ShopRepository {
  ShopRepository(this._ref);

  final Ref _ref;

  ErrorLogger get _errorLogger => _ref.read(errorLoggerProvider);

  HttpClient get _httpClientProvider => _ref.read(httpClientProvider);

  Future<T> runCatching<T>(Future<T> Function() operation) async {
    try {
      return await operation();
    } catch (e, st) {
      _errorLogger.logError(e, st);
      rethrow;
    }
  }

  Future<List<House>> fetchHouses() async {
    return runCatching<List<House>>(() async {
      final response = await _httpClientProvider.request(
        url: ApiPaths.fetchHouses,
        method: tTextGet,
      );

      final houseList = List<House>.from(
        (jsonDecode(response.data.toString()) as List<dynamic>)
            .map((e) => House.fromMap(e as Map<String, dynamic>)),
      );

      return houseList;
    });
  }
}

@riverpod
ShopRepository shopRepository(ShopRepositoryRef ref) {
  return ShopRepository(ref);
}

@riverpod
Future<List<House>> fetchHouses(FetchHousesRef ref) {
  final shopRepository = ref.read(shopRepositoryProvider);

  return shopRepository.fetchHouses();
}
