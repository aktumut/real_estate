import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/controllers/house_card_distance_controller.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_card/helpers/format_km.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_card/widgets/house_card_icon.dart';
import 'package:real_estate/src/utils/assets_library.dart';
import 'package:real_estate/src/widgets_common/async_value_widget.dart';

class HouseCardIconRow extends ConsumerWidget {
  const HouseCardIconRow({required this.house, super.key});

  final House house;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final distanceValue =
        ref.watch(houseCardDistanceControllerProvider(house: house));

    return AsyncValueWidget(
      value: distanceValue,
      data: (data) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HouseCardIcon(
              icon: IconLibrary.bedIcon,
              count: house.bedrooms.toString(),
            ),
            HouseCardIcon(
              icon: IconLibrary.bathIcon,
              count: house.bathrooms.toString(),
            ),
            HouseCardIcon(
              icon: IconLibrary.layersIcon,
              count: house.size.toString(),
            ),
            HouseCardIcon(
              icon: IconLibrary.locationIcon,
              count: '${formatKm(data)} km',
            ),
            SizedBox(
              width: context.screenWidth * 0.05,
            ),
          ],
        );
      },
    );
  }
}
