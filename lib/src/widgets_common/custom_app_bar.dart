import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/app_localizations_context.dart';
import 'package:real_estate/src/features/search/presentation/widgets/search_bar_widget.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({this.hasSearchBar = true, this.title = '', super.key});

  final bool hasSearchBar;
  final String title;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(hasSearchBar ? Sizes.p96 : Sizes.p40),
      child: AppBar(
        title: hasSearchBar
            ? Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(context.loc.appBarTitle),
                  gapH16,
                  const SearchBarWidget(),
                ],
              )
            : Transform(
                transform: Matrix4.translationValues(0, Sizes.p8, 0),
                child: Text(title),
              ),
        centerTitle: false,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(hasSearchBar ? Sizes.p96 : Sizes.p40);
}
