import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';

class HouseCardIcon extends StatelessWidget {
  const HouseCardIcon({
    required this.icon,
    required this.count,
    super.key,
  });

  final Widget icon;
  final String count;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        gapW4,
        Text(
          count,
          style: context.textTheme.bodySmall,
        ),
      ],
    );
  }
}
