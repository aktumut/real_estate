import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/page_paths.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_card/helpers/format_price.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_card/helpers/format_zip_code.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_card/widgets/house_card_icon_row.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_card/widgets/house_card_image.dart';

class HouseCard extends ConsumerWidget {
  const HouseCard({required this.house, super.key});

  final House house;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => context.goNamed(PageNames.houseDetail, extra: house),
      child: Container(
        width: double.infinity,
        height: Sizes.p108,
        padding: const EdgeInsets.all(Sizes.p16),
        decoration: BoxDecoration(
          color: context.theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(Sizes.p12),
        ),
        child: Row(
          children: [
            HouseCardImage(imagePath: house.image),
            gapW12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    r'$' '${formatPrice(house.price)}',
                    style: context.textTheme.headlineMedium,
                  ),
                  Text(
                    '${formatZipCode(house.zip)} ${house.city}',
                    style: context.textTheme.bodySmall,
                  ),
                  const Spacer(),
                  HouseCardIconRow(house: house),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
