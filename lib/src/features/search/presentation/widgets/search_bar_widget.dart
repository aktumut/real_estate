import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/page_paths.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/extensions/app_localizations_context.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/features/search/presentation/widgets/search_bar_icon.dart';

class SearchBarWidget extends ConsumerStatefulWidget {
  const SearchBarWidget({super.key});

  @override
  ConsumerState<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends ConsumerState<SearchBarWidget> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      style: context.textTheme.titleLarge,
      decoration: InputDecoration(
        hintText: context.loc.searchForAHome,
        hintStyle: context.textTheme.displayMedium,
        contentPadding: const EdgeInsets.only(left: Sizes.p16),
        suffixIcon: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: SearchBarIcon(
            focusNode: _focusNode,
            controller: _controller,
          ),
        ),
      ),
      onFieldSubmitted: (value) {
        if (value.isNotEmpty) {
          context.goNamed(
            PageNames.searchResult,
            pathParameters: {
              tTextSearchQuery: value,
            },
          );
        }
      },
    );
  }
}
