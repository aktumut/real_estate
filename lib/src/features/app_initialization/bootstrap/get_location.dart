import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_location.g.dart';

@riverpod
FutureOr<Position?> getLocation(
  GetLocationRef ref,
) async {
  LocationPermission permission;
  final geoLocatorPlatform = GeolocatorPlatform.instance;

  permission = await geoLocatorPlatform.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await geoLocatorPlatform.requestPermission();

    if (permission == LocationPermission.denied) {
      return null;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return null;
  }

  final currentPosition = await geoLocatorPlatform.getCurrentPosition();

  return currentPosition;
}
