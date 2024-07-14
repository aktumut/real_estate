import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/features/app_initialization/bootstrap/app_startup.dart';
import 'package:real_estate/src/features/app_initialization/presentation/widgets/app_startup_error_widget.dart';
import 'package:real_estate/src/features/app_initialization/presentation/widgets/app_startup_loading_widget.dart';

class AppStartupPage extends ConsumerWidget {
  const AppStartupPage({
    required this.onLoaded,
    super.key,
  });

  final WidgetBuilder onLoaded;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appStartupState = ref.watch(appStartupProvider);

    return appStartupState.when(
      data: (_) => onLoaded(context),
      loading: () => const AppStartupLoadingWidget(),
      error: (e, st) => AppStartupErrorWidget(
        message: e.toString(),
        onRetry: () => ref.invalidate(appStartupProvider),
      ),
    );
  }
}
