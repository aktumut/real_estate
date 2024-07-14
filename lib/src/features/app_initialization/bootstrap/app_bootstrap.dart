import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/main.dart';
import 'package:real_estate/src/exceptions/async_error_logger.dart';
import 'package:real_estate/src/features/app_initialization/presentation/app_startup_page.dart';

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
