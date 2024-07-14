import 'package:flutter/material.dart';

///  An extension on [BuildContext] providing shorthand methods for common
extension ThemeContextExt on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get screenWidth => mediaQuery.size.width;

  double get screenHeight => mediaQuery.size.height;

  Size get screenSize => mediaQuery.size;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  TextScaler get textScaleFactor => MediaQuery.textScalerOf(this);
}
