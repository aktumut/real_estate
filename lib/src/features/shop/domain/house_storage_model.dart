import 'package:isar/isar.dart';

part 'house_storage_model.g.dart';

@collection
class HouseStorage {
  Id id = Isar.autoIncrement;

  String image = '';

  int price = 0;

  int bedrooms = 0;

  int bathrooms = 0;

  int size = 0;

  String description = '';

  String zip = '';

  String city = '';

  int latitude = 0;

  int longitude = 0;

  String createdDate = '';

  bool isLiked = false;
}
