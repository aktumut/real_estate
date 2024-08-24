import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:real_estate/src/features/shop/domain/house_storage_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar_house_provider.g.dart';

// * This file defines the IsarHouse provider, which is a Riverpod provider that
// * provides an instance of the Isar database.
// * The Isar database is used to store house data locally on the device.

@Riverpod(keepAlive: true)
Future<Isar> isarHouse(IsarHouseRef ref) async {
  final dir = await getApplicationDocumentsDirectory();

  final isar = await Isar.open([HouseStorageSchema], directory: dir.path);

  return isar;
}
