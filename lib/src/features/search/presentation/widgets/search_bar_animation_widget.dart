import 'package:flutter/material.dart';

class SearchBarAnimationWidget extends StatelessWidget {
  const SearchBarAnimationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(seconds: 2),
      tween: Tween<double>(begin: 40, end: 16),
      builder: (BuildContext context, double value, Widget? child) {
        return SizedBox(height: value);
      },
    );
  }
}
