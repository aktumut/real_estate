import 'package:real_estate/src/features/shop/data/shop_repository.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'house_feed_controller.g.dart';

@riverpod
class HouseFeedController extends _$HouseFeedController {
  @override
  Future<List<House>> build() async {
    return await ref.read(fetchHousesProvider.future);
  }
}
