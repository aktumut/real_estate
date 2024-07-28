import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate/src/constants/keys.dart';
import 'package:real_estate/src/constants/page_paths.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/features/about/presentation/about_page.dart';
import 'package:real_estate/src/features/search/presentation/search_result_page.dart';
import 'package:real_estate/src/features/shop/domain/house_model.dart';
import 'package:real_estate/src/features/shop/presentation/house_detail/house_detail_page.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_feed_page.dart';
import 'package:real_estate/src/features/wish_list/presentation/wish_list_page.dart';
import 'package:real_estate/src/routing/not_found_page.dart';
import 'package:real_estate/src/routing/scaffold_with_nested_navigation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: PagePaths.houseFeed,
    debugLogDiagnostics: kDebugMode,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // the UI shell
          return ScaffoldWithNestedNavigation(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: Keys.houseFeedPageKey,
            routes: [
              // top route inside branch
              GoRoute(
                path: PagePaths.houseFeed,
                name: PageNames.houseFeed,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: HouseFeedPage(),
                ),
                routes: [
                  GoRoute(
                    path: PagePaths.houseDetail,
                    name: PageNames.houseDetail,
                    pageBuilder: (context, state) {
                      final house = state.extra! as House;

                      return NoTransitionPage(
                        child: HouseDetailPage(
                          house: house,
                        ),
                      );
                    },
                  ),
                ],
              ),
              GoRoute(
                path: PagePaths.searchResult,
                name: PageNames.searchResult,
                pageBuilder: (context, state) {
                  final searchQuery = state.pathParameters[tTextSearchQuery];

                  return NoTransitionPage(
                    child: SearchResultPage(
                      searchQuery: searchQuery.toString(),
                    ),
                  );
                },
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: Keys.credentialsPageKey,
            routes: [
              GoRoute(
                path: PagePaths.about,
                name: PageNames.about,
                pageBuilder: (context, state) => const NoTransitionPage(
                  child: AboutPage(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: Keys.wishListPageKey,
            routes: [
              GoRoute(
                path: PagePaths.wishList,
                name: PageNames.wishList,
                pageBuilder: (context, state) =>
                    const NoTransitionPage(child: WishListPage()),
              ),
            ],
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );
});
