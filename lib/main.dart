import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';
import 'core/app/app.dart';
import 'core/di/get_it_setup.dart';

import 'utils/app_assets.dart';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  final Iterable<dynamic> initialSetup = await Future.wait([
    getInitialThemeFromJson(),
    getIt.allReady(),
  ]);

  setup();

  runApp(
    MainApp(
      initialTheme: initialSetup.elementAt(0) as ThemeData,
    ),
  );
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

Future<ThemeData> getInitialThemeFromJson() async {
  final themeStr = await rootBundle.loadString(AppAssets.theme);
  final themeJson = jsonDecode(themeStr);

  return ThemeDecoder.decodeThemeData(themeJson, validate: true) ?? ThemeData();
}
