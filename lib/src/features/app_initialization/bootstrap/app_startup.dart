import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:real_estate/src/exceptions/error_logger.dart';
import 'package:real_estate/src/features/app_initialization/bootstrap/register_error_handlers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_startup.g.dart';

@Riverpod(keepAlive: true)
Future<void> appStartup(AppStartupRef ref) async {
  ref.onDispose(() {
    ref.invalidate(errorLoggerProvider);
  });

  // turn off the # in the URLs on the web
  usePathUrlStrategy();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await Future.wait([]);

  final errorLogger = ref.read(errorLoggerProvider);
  registerErrorHandlers(errorLogger);
}
