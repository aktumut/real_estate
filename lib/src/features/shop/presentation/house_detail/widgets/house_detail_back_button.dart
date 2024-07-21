import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/page_paths.dart';
import 'package:real_estate/src/utils/assets_library.dart';

class HouseDetailBackButton extends StatelessWidget {
  const HouseDetailBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: Sizes.p20,
      top: Sizes.p48,
      child: GestureDetector(
        child: IconLibrary.backIcon,
        onTap: () => context.goNamed(PageNames.houseFeed),
      ),
    );
  }
}
