import 'package:flutter_test/flutter_test.dart';
import 'package:real_estate/src/features/shop/data/shop_repository.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';

import '../../../test_container.dart';

void main() {
  group('ShopRepository Test', () {
    test('should return a list of houses', () async {
      // arrange
      final container = createTestContainer();
      final shopRepository = container.read(shopRepositoryProvider);

      // act
      final result = await shopRepository.fetchHouses();

      // assert
      expect(result, isA<List<House>>());
    });
  });
}
