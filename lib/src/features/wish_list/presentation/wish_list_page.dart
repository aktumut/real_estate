import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/app_localizations_context.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/widgets/house_card.dart';
import 'package:real_estate/src/features/wish_list/presentation/controllers/wish_list_controller.dart';
import 'package:real_estate/src/widgets_common/async_value_widget.dart';
import 'package:real_estate/src/widgets_common/custom_app_bar.dart';

class WishListPage extends ConsumerWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: CustomAppBar(
        hasSearchBar: false,
        title: context.loc.wishListAppBar,
      ),
      body: AsyncValueWidget(
        value: ref.watch(wishListControllerProvider),
        data: (data) {
          if (data.isNotEmpty) {
            return ListView.builder(
              padding: Paddings.scaffoldHorizontal,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    gapH16,
                    HouseCard(house: data[index]),
                  ],
                );
              },
            );
          } else {
            return Center(
              child: Text(
                context.loc.noWishList,
              ),
            );
          }
        },
      ),
    );
  }
}
