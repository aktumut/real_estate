import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Sizes.p24,
      height: Sizes.p24,
      child: CircularProgressIndicator(
        color: context.theme.primaryColor,
        value: value,
      ),
    );
  }
}
