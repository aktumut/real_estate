import 'package:flutter/material.dart';

class Keys {
  /// Navigator keys

  static GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static GlobalKey<NavigatorState> houseFeedPageKey =
      GlobalKey<NavigatorState>(debugLabel: 'house_feed_page');

  static GlobalKey<NavigatorState> credentialsPageKey =
      GlobalKey<NavigatorState>(debugLabel: 'credentials_page');
}
