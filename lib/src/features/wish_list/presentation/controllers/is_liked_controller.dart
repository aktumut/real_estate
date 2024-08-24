import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/wish_list/data/wish_list_storage_repository.dart';
import 'package:real_estate/src/features/wish_list/presentation/controllers/rebuild_is_liked_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'is_liked_controller.g.dart';

// * This file defines the IsLikedController, which is a Riverpod provider that
// * determines if a house is liked.

@riverpod
class IsLikedController extends _$IsLikedController {
  @override
  FutureOr<bool> build({required House house}) async {
    ref.watch(rebuildIsLikedProvider);

    return await ref.read(isHouseLikedProvider(house).future);
  }
}
