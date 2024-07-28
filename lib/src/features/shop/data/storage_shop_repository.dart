import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:real_estate/src/features/app_initialization/data/isar_house_provider.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/shop/domain/house_storage_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'storage_shop_repository.g.dart';

class StorageShopRepository {
  StorageShopRepository(this._ref);

  final Ref _ref;

  Isar get _isar => _ref.read(isarHouseProvider).requireValue;

  Future<void> saveHousesToStorage(List<House> houses) async {
    await _isar.writeTxn(() async {
      for (final house in houses) {
        final existingHouse = await _isar.houseStorages.get(house.id);
        if (existingHouse == null) {
          final newHouse = HouseStorage()
            ..id = house.id
            ..image = house.image
            ..price = house.price
            ..bedrooms = house.bedrooms
            ..bathrooms = house.bathrooms
            ..size = house.size
            ..description = house.description
            ..zip = house.zip
            ..city = house.city
            ..latitude = house.latitude
            ..createdDate = house.createdDate
            ..longitude = house.longitude
            ..isLiked = false;

          await _isar.houseStorages.put(newHouse);
        }
      }
    });
  }


  Future<List<House>> getHousesFromStorage() async {
    final houseStorages = await _isar.houseStorages.where().findAll();

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
StorageShopRepository storageShopRepository(StorageShopRepositoryRef ref) {
  return StorageShopRepository(ref);
}

@riverpod
Future<void> saveHousesToStorage(
  SaveHousesToStorageRef ref,
  List<House> houses,
) {
  final storageShopRepository = ref.watch(storageShopRepositoryProvider);

  return storageShopRepository.saveHousesToStorage(houses);
}

@riverpod
Future<List<House>> getHousesFromStorage(GetHousesFromStorageRef ref) {
  final storageShopRepository = ref.watch(storageShopRepositoryProvider);

  return storageShopRepository.getHousesFromStorage();
}
