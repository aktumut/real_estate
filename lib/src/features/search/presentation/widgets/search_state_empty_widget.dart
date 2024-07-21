import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/app_localizations_context.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/utils/assets_library.dart';

class SearchStateEmptyWidget extends StatelessWidget {
  const SearchStateEmptyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageLibrary.searchStateEmpty,
          gapH48,
          Text(
            context.loc.searchNoResultFound,
            textAlign: TextAlign.center,
            style: context.textTheme.titleLarge?.copyWith(
              color: AppColors.medium,
            ),
          ),
        ],
      ),
    );
  }
}
