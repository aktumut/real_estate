import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/widgets_common/custom_circular_progress_indicator.dart';
import 'package:real_estate/src/widgets_common/error_message_widget.dart';

// * This is a common widget that used for async value
// * handling together with controllers.

class AsyncValueWidget<T> extends StatelessWidget {
  const AsyncValueWidget({
    required this.value,
    required this.data,
    this.showLoading = true,
    super.key,
  });

  final AsyncValue<T> value;
  final Widget Function(T) data;
  final bool showLoading;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) => kDebugMode
          ? Center(child: ErrorMessageWidget(e.toString()))
          : const SizedBox.shrink(),
      loading: () => showLoading
          ? const Center(child: CustomCircularProgressIndicator())
          : const SizedBox.shrink(),
    );
  }
}

/// Sliver equivalent of [AsyncValueWidget]
class AsyncValueSliverWidget<T> extends StatelessWidget {
  const AsyncValueSliverWidget({
    required this.value,
    required this.data,
    this.showLoading = true,
    super.key,
  });

  final AsyncValue<T> value;
  final Widget Function(T) data;
  final bool showLoading;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: (e, st) => kDebugMode
          ? SliverToBoxAdapter(
              child: Center(child: ErrorMessageWidget(e.toString())),
            )
          : const SliverToBoxAdapter(child: SizedBox.shrink()),
      loading: () => showLoading
          ? const SliverToBoxAdapter(
              child: Center(child: CustomCircularProgressIndicator()),
            )
          : const SizedBox.shrink(),
    );
  }
}
