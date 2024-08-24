import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/exceptions/error_logger.dart';

// * Handle errors from Flutter framework

void registerErrorHandlers(ErrorLogger errorLogger) {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);

    errorLogger.logFlutterError(details);
  };

  // * Handle errors from the underlying platform/OS
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    errorLogger.logError(error, stack);

    return true;
  };

  // * Show some error UI if any uncaught exception happens
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('An error occurred'),
      ),
      body: Center(
        child: Text(
          details.toString(),
          style: TextStyle(color: AppColors.strong),
        ),
      ),
    );
  };
}
