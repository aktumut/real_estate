import 'package:isar/isar.dart';

part 'house_storage_model.g.dart';

@collection
class HouseStorage {
  Id id = Isar.autoIncrement;
  @Name('name')
  String image = '';
  @Name('price')
  int price = 0;
  @Name('bedrooms')
  int bedrooms = 0;
  @Name('bathrooms')
  int bathrooms = 0;
  @Name('size')
  int size = 0;
  @Name('description')
  String description = '';
  @Name('zip')
  String zip = '';
  @Name('city')
  String city = '';
  @Name('latitude')
  int latitude = 0;
  @Name('longitude')
  int
   longitude = 0;
  @Name('createdDate')
  String createdDate = '';
}
