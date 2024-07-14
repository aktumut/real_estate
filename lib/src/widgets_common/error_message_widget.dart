import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';

class ErrorMessageWidget extends StatelessWidget {
  const ErrorMessageWidget(this.errorMessage, {super.key});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: context.theme.textTheme.titleLarge?.copyWith(color: AppColors.red),
    );
  }
}
