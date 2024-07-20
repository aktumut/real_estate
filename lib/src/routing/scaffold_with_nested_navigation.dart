import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/constants/page_paths.dart';
import 'package:real_estate/src/routing/app_router.dart';
import 'package:real_estate/src/utilities/assets_library.dart';

class ScaffoldWithNestedNavigation extends ConsumerStatefulWidget {
  const ScaffoldWithNestedNavigation({
    required this.navigationShell,
    Key? key,
  }) : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ScaffoldWithNestedNavigation> createState() =>
      _ScaffoldWithNestedNavigationState();
}

class _ScaffoldWithNestedNavigationState
    extends ConsumerState<ScaffoldWithNestedNavigation> {
  Future<void> _goBranch(int index) async {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );

    if (index == 0) {
      ref.watch(goRouterProvider).goNamed(PageNames.houseFeed);
    } else if (index == 1) {
      ref.watch(goRouterProvider).goNamed(PageNames.credentials);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: widget.navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            label: '',
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                widget.navigationShell.currentIndex == 0
                    ? AppColors.strong
                    : AppColors.medium,
                BlendMode.srcIn,
              ),
              child: IconLibrary.homeIcon,
            ),
          ),
          NavigationDestination(
            label: '',
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                widget.navigationShell.currentIndex == 1
                    ? AppColors.strong
                    : AppColors.medium,
                BlendMode.srcIn,
              ),
              child: IconLibrary.infoIcon,
            ),
          ),
        ],
        onDestinationSelected: _goBranch,
      ),
    );
  }
}
