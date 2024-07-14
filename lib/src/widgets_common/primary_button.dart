import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/extensions/theme_context_ext.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    required this.onPressed,
    required this.fillColor,
    super.key,
    this.icon,
    this.isFilled = false,
    this.isLoading = false,
  });

  final String text;
  final Widget? icon;
  final bool isFilled;
  final void Function()? onPressed;

  final Color fillColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.p56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(Sizes.p28)),
            ),
          ),
          shadowColor: isFilled
              ? WidgetStateProperty.all<Color>(fillColor)
              : WidgetStateProperty.all<Color>(Colors.transparent),
          backgroundColor: isFilled
              ? WidgetStateProperty.all<Color>(fillColor)
              : WidgetStateProperty.all<Color>(Colors.transparent),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon == null || isLoading) const SizedBox.shrink() else icon!,
            const SizedBox(width: Sizes.p12),
            if (isLoading)
              Center(
                child: SizedBox(
                  height: Sizes.p20,
                  width: Sizes.p20,
                  child: CircularProgressIndicator(
                    color: isFilled
                        ? AppColors.white
                        : context.theme.colorScheme.primary,
                  ),
                ),
              )
            else
              MediaQuery.withClampedTextScaling(
                maxScaleFactor: Sizes.avgTextScaleFactor,
                child: Text(
                  text,
                  style: context.textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.w400,
                    fontFamily: tTextFontFamilyBold,
                    color: isFilled ? AppColors.strong : fillColor,
                    shadows: isFilled
                        ? [
                            Shadow(
                              blurRadius: 5,
                              color: AppColors.strong,
                            ),
                          ]
                        : [],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
