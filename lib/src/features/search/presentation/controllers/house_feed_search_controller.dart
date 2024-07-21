import 'package:real_estate/src/features/shop/data/shop_repository.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'house_feed_search_controller.g.dart';

@riverpod
class HouseFeedSearchController extends _$HouseFeedSearchController {
  @override
  FutureOr<List<House>> build({required String query}) async {
    var houseList = ref.read(fetchHousesProvider).value;

    if (houseList == null) {
      houseList = await ref.read(fetchHousesProvider.future);
      houseList = filterHouses(houseList ?? [], query);
    } else {
      houseList = filterHouses(houseList, query);
    }

    return houseList;
  }

  List<House> filterHouses(List<House> houses, String query) {
    final trimmedQuery = query.trim().toLowerCase();

    final filteredHouses = houses.where((house) {
      final cityMatch = house.city.trim().toLowerCase().contains(trimmedQuery);

      final postalCodeMatch = house.zip.trim().startsWith(trimmedQuery);

      return cityMatch || postalCodeMatch;
    }).toList();

    return filteredHouses;
  }
}
