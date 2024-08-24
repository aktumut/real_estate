import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/app.dart';
import 'package:real_estate/src/exceptions/async_error_logger.dart';
import 'package:real_estate/src/features/app_initialization/presentation/app_startup_page.dart';

// * This class is responsible for bootstrapping the application.
// * It creates the root widget of the application, which is a ProviderScope
// * that provides access to the application's state management.
// * The root widget is an AppStartupPage that displays a loading screen while
// * the application initializes. Once the application is initialized, the
// * AppStartupPage redirects to the MyApp which is main widget of the app.

class AppBootstrap {
  Widget createRootWidget() {
    final container = ProviderContainer(
      observers: [AsyncErrorLogger()],
    );

    return UncontrolledProviderScope(
      container: container,
      child: AppStartupPage(
        onLoaded: (context) => const MyApp(),
      ),
    );
  }
}
