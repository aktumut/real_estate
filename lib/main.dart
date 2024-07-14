import 'dart:async';
import 'package:flutter/material.dart';
import 'package:real_estate/src/features/app_initialization/bootstrap/app_bootstrap.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appBootstrap = AppBootstrap();

  final root = appBootstrap.createRootWidget();

  runApp(root);
}
