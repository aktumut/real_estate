import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/features/search/presentation/controllers/house_feed_search_controller.dart';
import 'package:real_estate/src/features/search/presentation/widgets/search_state_empty_widget.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/widgets/house_card.dart';
import 'package:real_estate/src/widgets_common/async_value_widget.dart';

class SearchResultWidget extends ConsumerStatefulWidget {
  const SearchResultWidget({required this.searchQuery, super.key});

  final String searchQuery;

  @override
  ConsumerState<SearchResultWidget> createState() => _SearchResultWidgetState();
}

class _SearchResultWidgetState extends ConsumerState<SearchResultWidget> {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final searchListValue =
        ref.watch(houseFeedSearchControllerProvider(query: widget.searchQuery));

    return Expanded(
      child: AsyncValueWidget(
        value: searchListValue,
        data: (data) {
          if (data.isEmpty) {
            return const SearchStateEmptyWidget();
          } else {
            data.sort((a, b) => a.price.compareTo(b.price));

            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    gapH16,
                    AnimatedContainer(
                      curve: Curves.easeInOut,
                      duration: Duration(milliseconds: 300 + (index * 100)),
                      transform: Matrix4.translationValues(
                        startAnimation ? 0 : context.screenWidth,
                        0,
                        0,
                      ),
                      child: HouseCard(house: data[index]),
                    ),
                  ],
                );
              },
            );
          }
        },
      ),
    );
  }
}
