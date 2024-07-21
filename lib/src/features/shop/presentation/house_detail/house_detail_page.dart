import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/shop/presentation/house_detail/widgets/house_detail_back_button.dart';
import 'package:real_estate/src/features/shop/presentation/house_detail/widgets/house_detail_image_widget.dart';
import 'package:real_estate/src/features/shop/presentation/house_detail/widgets/house_detail_modal_widget.dart';

class HouseDetailPage extends ConsumerWidget {
  const HouseDetailPage({required this.house, super.key});

  final House house;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            HouseDetailImageWidget(house: house),
            const HouseDetailBackButton(),
            HouseDetailModalWidget(house: house),
          ],
        ),
      ),
    );
  }
}
