import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:real_estate/src/features/shop/data/shop_repository.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/controllers/house_feed_controller.dart';

import '../../../../../mocks.dart';
import '../../../../../test_container.dart';

void main() {
  group(
    'house feed controller test',
    () {
      test('initial state is AsyncLoading', () {
        final container = createTestContainer(
          overrides: [
            shopRepositoryProvider.overrideWith(
              ShopRepository.new,
            ),
          ],
        );

        final listener = Listener<AsyncValue<List<House>>>();

        container.listen<AsyncValue<List<House>>>(
          houseFeedControllerProvider,
          listener.call,
          fireImmediately: true,
        );

        verify(
          () => listener(null, const AsyncLoading<List<House>>()),
        );

        container.dispose();
      });
    },
  );
}
