import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/page_paths.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/extensions/app_localizations_context.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/utils/assets_library.dart';

class SearchBarWidget extends ConsumerStatefulWidget {
  const SearchBarWidget({super.key});

  @override
  ConsumerState<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends ConsumerState<SearchBarWidget> {
  Widget icon = IconLibrary.searchIcon;
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() {
          if (hasFocus) {
            icon = GestureDetector(
              onTap: () {
                _controller.clear();
                FocusScope.of(context).unfocus();
              },
              child: IconLibrary.closeIcon,
            );
          } else {
            icon = IconLibrary.searchIcon;
          }
        });
      },
      child: TextFormField(
        controller: _controller,
        style: context.textTheme.titleLarge,
        decoration: InputDecoration(
          hintText: context.loc.searchForAHome,
          hintStyle: context.textTheme.headlineLarge?.copyWith(
            color: AppColors.medium,
          ),
          contentPadding: const EdgeInsets.only(left: Sizes.p16),
          suffixIcon: AnimatedSwitcher(
            duration: const Duration(milliseconds: 200),
            child: icon,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(Sizes.p12),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: AppColors.darkGray,
        ),
        onFieldSubmitted: (value) {
          context.goNamed(
            PageNames.searchResult,
            pathParameters: {
              tTextSearchQuery: value,
            },
          );
        },
      ),
    );
  }
}
