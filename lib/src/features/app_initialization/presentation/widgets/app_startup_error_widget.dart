import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/app_localizations_context.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';
import 'package:real_estate/src/widgets_common/primary_button.dart';

// * In case of an error during app startup, this widget is displayed.

class AppStartupErrorWidget extends StatelessWidget {
  const AppStartupErrorWidget({
    required this.message,
    required this.onRetry,
    super.key,
  });

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (kDebugMode)
                Text(message, style: context.theme.textTheme.headlineSmall)
              else
                Text(context.loc.anErrorOccurred),
              gapH24,
              PrimaryButton(
                onPressed: onRetry,
                isFilled: true,
                fillColor: context.theme.colorScheme.primary,
                text: context.loc.retry,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
