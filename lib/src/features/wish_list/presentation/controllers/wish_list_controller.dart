import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/wish_list/data/wish_list_storage_repository.dart';
import 'package:real_estate/src/features/wish_list/presentation/controllers/rebuild_is_liked_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wish_list_controller.g.dart';

// * This file defines the WishListController, which returns a list of houses
// * that are in the wishlist.

@riverpod
class WishListController extends _$WishListController {
  @override
  FutureOr<List<House>> build() async {
    ref.watch(rebuildIsLikedProvider);

    return await ref.read(getWishListHousesProvider.future);
  }
}
