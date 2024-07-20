import 'package:flutter/material.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_card/widgets/house_card_icon.dart';
import 'package:real_estate/src/utilities/assets_library.dart';

class HouseCardIconRow extends StatelessWidget {
  const HouseCardIconRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        HouseCardIcon(
          icon: IconLibrary.bedIcon,
          count: '1',
        ),
        HouseCardIcon(
          icon: IconLibrary.bathIcon,
          count: '1',
        ),
        HouseCardIcon(
          icon: IconLibrary.layersIcon,
          count: '46',
        ),
        HouseCardIcon(
          icon: IconLibrary.locationIcon,
          count: '54.6 km',
        ),
        SizedBox(
          width: context.screenWidth * 0.05,
        ),
      ],
    );
  }
}
