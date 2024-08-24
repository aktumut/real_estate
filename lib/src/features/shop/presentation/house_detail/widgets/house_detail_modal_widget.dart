import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/app_localizations_context.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/shop/presentation/house_detail/widgets/map_widget.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/helpers/format_price.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/widgets/house_card_icon_row.dart';

class HouseDetailModalWidget extends StatelessWidget {
  const HouseDetailModalWidget({required this.house, super.key});

  final House house;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Sizes.heightHouseDetailImageDiff,
      child: Container(
        width: context.screenWidth,
        padding: Paddings.scaffoldHorizontal,
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(Sizes.p16),
        ),
        child: SizedBox(
          height: context.screenHeight - Sizes.heightHouseDetailImageDiff,
          child: ListView(
            physics: const ClampingScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    r'$' '${house.price.formatPrice()}',
                    style: context.textTheme.headlineMedium,
                  ),
                  HouseCardIconRow(house: house),
                ],
              ),
              gapH32,
              Text(
                context.loc.houseDetailDescription,
                style: context.textTheme.headlineMedium,
              ),
              gapH16,
              Text(
                house.description,
                style: context.textTheme.displayLarge,
              ),
              gapH16,
              Text(
                context.loc.houseDetailLocation,
                style: context.textTheme.headlineMedium,
              ),
              gapH16,
              MapWidget(house: house),
              const SizedBox(height: Sizes.heightHouseDetailImageDiff),
            ],
          ),
        ),
      ),
    );
  }
}
