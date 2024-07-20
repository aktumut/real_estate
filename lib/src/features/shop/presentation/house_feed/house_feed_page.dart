import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_card/house_card.dart';
import 'package:real_estate/src/widgets_common/custom_app_bar.dart';

class HouseFeedPage extends StatelessWidget {
  const HouseFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: Paddings.scaffoldAll,
          child: Column(
            children: [
              gapH16,
              HouseCard(),
            ],
          ),
        ),
      ),
    );
  }
}
