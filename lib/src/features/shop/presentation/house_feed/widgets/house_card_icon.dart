import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';

class HouseCardIcon extends ConsumerWidget {
  const HouseCardIcon({
    required this.icon,
    required this.count,
    super.key,
  });

  final Widget icon;
  final String count;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            context.theme.colorScheme.secondary,
            BlendMode.srcIn,
          ),
          child: icon,
        ),
        gapW4,
        Text(
          count,
          style: context.textTheme.bodySmall,
        ),
        gapW8,
      ],
    );
  }
}
