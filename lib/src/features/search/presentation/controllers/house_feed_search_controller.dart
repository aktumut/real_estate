import 'package:real_estate/src/features/shop/data/shop_repository.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'house_feed_search_controller.g.dart';

// * This class is a Riverpod provider that controls the search functionality
// *
// * This class takes a search queries a parameter and returns a list of houses
// *  that match the query.
// *
// * The search is performed by filtering the list of houses based on the city
// * and postal code.

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
