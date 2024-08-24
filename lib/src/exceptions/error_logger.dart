import 'package:flutter/foundation.dart';
import 'package:real_estate/src/exceptions/app_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_logger.g.dart';

// * This file defines the error logger that is used through the app
// *
// * I would like to log errors to Firebase Crashlytics if the app is in
// * production mode.

class ErrorLogger {
  ErrorLogger(// this._firebaseCrashlytics,
      );

  FutureOr<dynamic> logError(Object error, StackTrace? stackTrace) async {
    if (kDebugMode) {
      print('Error: $error');
      print('StackTrace: $stackTrace');
    } else {
      // await _firebaseCrashlytics.recordError(error, stackTrace, fatal: true);
    }
  }

  FutureOr<dynamic> logFlutterError(FlutterErrorDetails details) async {
    if (kDebugMode) {
      print('FlutterErrorDetails: $details');
    } else {
      // await _firebaseCrashlytics.recordFlutterFatalError(details);
    }
  }

  FutureOr<dynamic> logAppException(AppException exception) async {
    if (kDebugMode) {
      print('AppException: $exception');
    }
  }
}

@Riverpod(keepAlive: true)
ErrorLogger errorLogger(ErrorLoggerRef ref) {
  // final firebaseCrashlytics = ref.watch(firebaseCrashlyticsProvider);

  return ErrorLogger();
}
