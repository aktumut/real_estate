import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate/src/constants/page_paths.dart';
import 'package:real_estate/src/features/shop/presentation/house_feed/house_feed_page.dart';
import 'package:real_estate/src/routing/not_found_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: PagePaths.houseFeed,
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: PagePaths.houseFeed,
        name: PageNames.houseFeed,
        builder: (context, state) => const HouseFeedPage(),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundPage(),
  );
});
