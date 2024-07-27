import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:real_estate/src/features/shop/domain/house_storage_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'isar_house_provider.g.dart';

@Riverpod(keepAlive: true)
Future<Isar> isarHouse(IsarHouseRef ref) async {
  final dir = await getApplicationDocumentsDirectory();

  final isar = await Isar.open([HouseStorageSchema], directory: dir.path);

  return isar;
}
