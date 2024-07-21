import 'package:geolocator/geolocator.dart';
import 'package:real_estate/src/features/app_initialization/bootstrap/app_startup.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'house_card_distance_controller.g.dart';

@riverpod
class HouseCardDistanceController extends _$HouseCardDistanceController {
  @override
  FutureOr<double?> build({required House house}) {
    final position = ref.read(loginPositionProvider.notifier).state;

    if (position != null) {
      final distanceInMeters = Geolocator.distanceBetween(
        house.latitude.toDouble(),
        house.longitude.toDouble(),
        position.latitude,
        position.longitude,
      );

      final distanceInKm =
          double.parse((distanceInMeters / 1000).toStringAsFixed(1));

      return distanceInKm;
    } else {
      return null;
    }
  }
}
