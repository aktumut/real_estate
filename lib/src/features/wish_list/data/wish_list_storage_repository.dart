import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:real_estate/src/features/app_initialization/data/isar_house_provider.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/shop/domain/house_storage_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'wish_list_storage_repository.g.dart';

// * This file defines the WishListStorageRepository, which is responsible for
// * managing the wishlist data in local storage using Isar.

class WishListStorageRepository {
  WishListStorageRepository(this._ref);

  final Ref _ref;

  Isar get _isar => _ref.read(isarHouseProvider).requireValue;

  Future<bool> isHouseLiked(House house) async {
    final houseStorage = await _isar.houseStorages.get(house.id);

    return houseStorage?.isLiked ?? false;
  }

  Future<void> addDiscardHouseFromWishlist(House house) async {
    await _isar.writeTxn(() async {
      final houseStorage = await _isar.houseStorages.get(house.id);
      if (houseStorage != null) {
        houseStorage.isLiked = !houseStorage.isLiked;

        await _isar.houseStorages.put(houseStorage);
      }
    });
  }

  Future<List<House>> getWishListHouses() async {
    final houseStorages =
        await _isar.houseStorages.filter().isLikedEqualTo(true).findAll();

    return houseStorages
        .map(
          (houseStorage) => House(
            id: houseStorage.id,
            image: houseStorage.image,
            price: houseStorage.price,
            bedrooms: houseStorage.bedrooms,
            bathrooms: houseStorage.bathrooms,
            size: houseStorage.size,
            description: houseStorage.description,
            zip: houseStorage.zip,
            city: houseStorage.city,
            latitude: houseStorage.latitude,
            longitude: houseStorage.longitude,
            createdDate: houseStorage.createdDate,
          ),
        )
        .toList();
  }
}

@riverpod
WishListStorageRepository wishListStorageRepository(
  WishListStorageRepositoryRef ref,
) =>
    WishListStorageRepository(ref);

@riverpod
Future<bool> isHouseLiked(IsHouseLikedRef ref, House house) {
  final wishListStorageRepository =
      ref.watch(wishListStorageRepositoryProvider);

  return wishListStorageRepository.isHouseLiked(house);
}

@riverpod
Future<void> addDiscardHouseFromWishlist(
  AddDiscardHouseFromWishlistRef ref,
  House house,
) {
  final wishListStorageRepository =
      ref.watch(wishListStorageRepositoryProvider);

  return wishListStorageRepository.addDiscardHouseFromWishlist(house);
}

@riverpod
Future<List<House>> getWishListHouses(GetWishListHousesRef ref) {
  final wishListStorageRepository =
      ref.watch(wishListStorageRepositoryProvider);

  return wishListStorageRepository.getWishListHouses();
}
