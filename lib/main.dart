import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';
import 'package:webportal_biourja_flutter/core/app/app.dart';
import 'package:webportal_biourja_flutter/features/buy_sale_portal/view/main.dart';

import 'utils/app_assets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final Iterable<dynamic> initialSetup = await Future.wait([
    getInitialThemeFromJson(),
  ]);

  runApp(
    MainApp(
      initialTheme: initialSetup.elementAt(0) as ThemeData,
    ),
  );
}

Future<ThemeData> getInitialThemeFromJson() async {
  final themeStr = await rootBundle.loadString(AppAssets.theme);
  final themeJson = jsonDecode(themeStr);

  return ThemeDecoder.decodeThemeData(themeJson, validate: true) ?? ThemeData();
}
