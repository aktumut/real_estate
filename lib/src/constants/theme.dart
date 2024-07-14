import 'package:flutter/material.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/constants/text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: tTextFontFamily,
    scaffoldBackgroundColor: AppColors.lightGray,
    primaryColor: AppColors.red,
    colorScheme: ColorScheme.fromSeed(
      primary: AppColors.darkGray,
      seedColor: AppColors.darkGray,
      secondary: AppColors.medium,
      surface: AppColors.white,
      onSurface: AppColors.strong,
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.lightGray,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: AppColors.strong,
        fontSize: 24,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.white,
      indicatorColor: Colors.transparent,
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
    ),
    textTheme: TextTheme(
      headlineLarge: title02,
      headlineSmall: detail,
      bodyLarge: title01,
      bodyMedium: body,
      bodySmall: hint,
      displaySmall: subTitle,
      titleLarge: title01,
      titleSmall: input,
    ),
  );
}
