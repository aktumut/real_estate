import 'package:flutter/material.dart';
import 'package:real_estate/src/features/app_initialization/bootstrap/app_bootstrap.dart';

// * The main function creates an instance of the AppBootstrap class and calls its
// * createRootWidget method to get the root widget of the application.
// *
// * The root widget is then passed to the runApp function, which starts the
// * application.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appBootstrap = AppBootstrap();

  final root = appBootstrap.createRootWidget();

  runApp(root);
}
