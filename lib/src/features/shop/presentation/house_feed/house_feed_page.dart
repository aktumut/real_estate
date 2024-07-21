import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/controllers/house_feed_controller.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_card/house_card.dart';
import 'package:real_estate/src/widgets_common/async_value_widget.dart';
import 'package:real_estate/src/widgets_common/custom_app_bar.dart';

class HouseFeedPage extends ConsumerWidget {
  const HouseFeedPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final houseFeedValue = ref.watch(houseFeedControllerProvider);

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: Paddings.scaffoldHorizontal,
          child: AsyncValueWidget(
            value: houseFeedValue,
            data: (data) {
              data.sort((a, b) => a.price.compareTo(b.price));

              return ListView.builder(
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
            },
          ),
        ),
      ),
    );
  }
}
