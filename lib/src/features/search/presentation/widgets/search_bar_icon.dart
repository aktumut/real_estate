import 'package:flutter/material.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/utils/assets_library.dart';

class SearchBarIcon extends StatelessWidget {
  const SearchBarIcon({
    required this.focusNode,
    required this.controller,
    super.key,
  });
  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      child: focusNode.hasFocus
          ? GestureDetector(
              onTap: () {
                controller.clear();
                focusNode.unfocus();
              },
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  context.theme.colorScheme.onPrimary,
                  BlendMode.srcIn,
                ),
                child: IconLibrary.closeIcon,
              ),
            )
          : ColorFiltered(
              colorFilter: ColorFilter.mode(
                context.theme.colorScheme.onPrimary,
                BlendMode.srcIn,
              ),
              child: IconLibrary.searchIcon,
            ),
    );
  }
}
