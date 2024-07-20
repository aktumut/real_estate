import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:real_estate/src/features/app_initialization/data/app_interceptor.dart';
import 'package:real_estate/src/features/app_initialization/data/http_client.dart';
import 'package:real_estate/src/features/shop/data/shop_repository.dart';

class MockShopRepository extends Mock implements ShopRepository {}

class MockHttpClient extends Mock implements HttpClient {}

class MockAppInterceptor extends Mock implements AppInterceptor {}

class MockDio extends Mock implements Dio {}

class Listener<T> extends Mock {
  void call(T? previous, T next);
}
