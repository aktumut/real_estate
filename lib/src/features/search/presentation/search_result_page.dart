import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/features/search/presentation/widgets/search_bar_animation_widget.dart';
import 'package:real_estate/src/features/search/presentation/widgets/search_bar_widget.dart';
import 'package:real_estate/src/features/search/presentation/widgets/search_result_widget.dart';

class SearchResultPage extends ConsumerWidget {
  const SearchResultPage({required this.searchQuery, super.key});

  final String searchQuery;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: Paddings.scaffoldHorizontal,
          child: Column(
            children: [
              const SearchBarAnimationWidget(),
              const SearchBarWidget(),
              SearchResultWidget(searchQuery: searchQuery),
            ],
          ),
        ),
      ),
    );
  }
}
