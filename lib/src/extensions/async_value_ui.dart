import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/exceptions/app_exception.dart';
import 'package:real_estate/src/utils/alert_dialogs/alert_dialogs.dart';

/// Extension for [AsyncValue] to show an alert dialog on error.
extension AsyncValueUI on AsyncValue<dynamic> {
  void showAlertDialogOnError(BuildContext context) {
    if (kDebugMode) print('isLoading: $isLoading, hasError: $hasError');

    if (!isLoading && hasError) {
      final message = error.toString();
      showExceptionAlertDialog(
        context: context,
        title: tTextError,
        exception: message,
      );
    }
  }
}

AsyncValue<dynamic> globalAsyncError(AppException e, StackTrace st) {
  return AsyncValue.error(e, st);
}
