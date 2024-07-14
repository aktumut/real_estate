import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/exceptions/app_exception.dart';
import 'package:real_estate/src/exceptions/error_logger.dart';

/// Error logger for business logic errors.

class AsyncErrorLogger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<dynamic> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    final errorLogger = container.read(errorLoggerProvider);
    final error = _findError(newValue);
    if (error != null) {
      if (error.error is AppException) {
        errorLogger.logAppException(error.error as AppException);
      } else {
        errorLogger.logError(error.error, error.stackTrace);
      }
    }
  }
}

AsyncError<dynamic>? _findError(Object? value) {
  if (value is AsyncError) {
    return value;
  } else {
    return null;
  }
}
