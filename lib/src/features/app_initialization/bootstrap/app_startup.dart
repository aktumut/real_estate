import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:geolocator/geolocator.dart';
import 'package:real_estate/src/exceptions/error_logger.dart';
import 'package:real_estate/src/features/app_initialization/bootstrap/get_location.dart';
import 'package:real_estate/src/features/app_initialization/bootstrap/register_error_handlers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_startup.g.dart';

final loginPositionProvider = StateProvider<Position?>((ref) => null);

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

  ref.read(loginPositionProvider.notifier).state =
      await ref.read(getLocationProvider.future);

  await Future.wait([]);

  final errorLogger = ref.read(errorLoggerProvider);
  registerErrorHandlers(errorLogger);
}
