import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:real_estate/src/constants/app_colors.dart';
import 'package:real_estate/src/constants/app_sizes.dart';
import 'package:real_estate/src/constants/strings.dart';
import 'package:real_estate/src/constants/text_styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    fontFamily: tTextFontFamily,
    scaffoldBackgroundColor: AppColors.lightGray,
    primaryColor: AppColors.red,
    colorScheme: ColorScheme.fromSeed(
      primary: AppColors.medium,
      onPrimary: AppColors.iconGray,
      onSecondaryContainer: AppColors.lightGray,
      seedColor: AppColors.darkGray,
      secondary: AppColors.strong,
      surface: AppColors.white,
      onSurface: AppColors.darkGray,
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.lightGray,
      elevation: 0,
      titleTextStyle: title01,
      surfaceTintColor: AppColors.white,
      toolbarHeight: Sizes.p96,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.white,
      indicatorColor: Colors.transparent,
      height: Sizes.p72,
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.darkGray,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p12),
        borderSide: BorderSide.none,
      ),
      filled: true,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all<Color>(AppColors.red),
    ),
    textTheme: TextTheme(
      headlineLarge: title02,
      headlineMedium: title01,
      headlineSmall: detail,
      bodyLarge: hint.copyWith(color: AppColors.medium),
      bodyMedium: body,
      bodySmall: hint,
      displayLarge: body.copyWith(color: AppColors.medium),
      displayMedium: title02.copyWith(color: AppColors.medium),
      displaySmall: subTitle,
      titleLarge: title03,
      titleMedium: title03.copyWith(color: AppColors.medium),
      titleSmall: input,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: tTextFontFamily,
    scaffoldBackgroundColor: AppColors.darkThemeBackground,
    primaryColor: AppColors.red,
    colorScheme: ColorScheme.fromSeed(
      primary: AppColors.darkThemeBackground,
      onPrimary: AppColors.white,
      onSecondaryContainer: AppColors.lightGray,
      seedColor: AppColors.darkGray,
      secondary: AppColors.white,
      surface: AppColors.darkThemeGray,
      onSurface: AppColors.darkThemeBackground,
    ),
    appBarTheme: AppBarTheme(
      color: AppColors.darkThemeBackground,
      elevation: 0,
      titleTextStyle: title01.copyWith(color: AppColors.white),
      surfaceTintColor: AppColors.strong,
      toolbarHeight: Sizes.p96,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: AppColors.strong,
      indicatorColor: Colors.transparent,
      height: Sizes.p72,
      overlayColor: WidgetStateProperty.all<Color>(Colors.transparent),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.darkThemeGray,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(Sizes.p12),
        borderSide: BorderSide.none,
      ),
      filled: true,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all<Color>(AppColors.red),
    ),
    textTheme: TextTheme(
      headlineLarge: title02.copyWith(color: AppColors.white),
      headlineMedium: title01.copyWith(color: AppColors.white),
      headlineSmall: detail.copyWith(color: AppColors.white),
      bodyMedium: body.copyWith(color: AppColors.white),
      bodySmall: hint.copyWith(color: AppColors.white),
      displayLarge: body.copyWith(color: AppColors.white),
      displayMedium: title02.copyWith(color: AppColors.white),
      displaySmall: subTitle.copyWith(color: AppColors.white),
      titleLarge: title03.copyWith(color: AppColors.white),
      titleMedium: title03.copyWith(color: AppColors.white),
      titleSmall: input.copyWith(color: AppColors.white),
    ),
  );
}

final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);
