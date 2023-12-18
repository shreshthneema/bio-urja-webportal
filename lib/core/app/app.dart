import 'dart:ui';

import '../../features/sale_portal/view/main.dart';
import '../../features/buy_sell_portal/view/main.dart';
import 'style.dart';
// import 'package:cms_main_one/core/di/get_it_setup.dart';
// import 'package:cms_main_one/core/routes/app_router.dart';
// import 'package:cms_main_one/features/authentication/bloc/authentication_bloc.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class MainApp extends StatefulWidget {
  const MainApp({required this.initialTheme, super.key});

  final ThemeData initialTheme;

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Demo',
      theme: getTheme(theme: widget.initialTheme),
      home: const SalePortalMain(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown,
      };
}

// class _MainAppState extends State<MainApp> with RouterMixin {
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => getIt<AuthenticationBloc>()..add(AppStarted()),
//       child: MaterialApp.router(
//         title: 'Flutter Project',
//         theme: getTheme(theme: widget.initialTheme),
//         themeAnimationDuration: const Duration(
//           seconds: 1,
//         ),
//         // debugShowCheckedModeBanner: false,
//         routerConfig: router,
//       ),
//     );
//   }
// }
