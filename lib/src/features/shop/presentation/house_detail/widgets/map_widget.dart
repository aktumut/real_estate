import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/flutter_map_marker_cluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:url_launcher/url_launcher.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({
    required this.house,
    super.key,
  });

  final House house;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(
            house.latitude.toDouble(),
            house.longitude.toDouble(),
          ),
          onTap: (_, LatLng location) async {
            final String url;
            if (Platform.isIOS) {
              final encodedLatitude =
                  Uri.encodeComponent(location.latitude.toString());
              final encodedLongitude =
                  Uri.encodeComponent(location.longitude.toString());

              url = 'maps://?ll=$encodedLatitude,$encodedLongitude';
            } else {
              url =
                  'https://www.google.com/maps/dir/?api=1&destination=${location.latitude},${location.longitude}';
            }
            if (await canLaunchUrl(Uri.parse(url))) {
              await launchUrl(Uri.parse(url));
            }
          },
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerClusterLayerWidget(
            options: MarkerClusterLayerOptions(
              size: const Size(Sizes.p40, Sizes.p40),
              markers: [
                Marker(
                  width: Sizes.p80,
                  height: Sizes.p80,
                  point: LatLng(
                    house.latitude.toDouble(),
                    house.longitude.toDouble(),
                  ),
                  child: Icon(
                    Icons.location_pin,
                    size: Sizes.p48,
                    color: context.theme.primaryColor,
                  ),
                ),
              ],
              builder: (BuildContext context, List<Marker> markers) =>
                  const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
