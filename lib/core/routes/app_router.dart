import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/app/app.dart';
import '../../features/pages.dart';

import 'route.dart';

mixin RouterMixin on State<MainApp> {
  GoRouter router = GoRouter(
    initialLocation: AppRoute.login.path,
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        path: AppRoute.login.path,
        name: 'Login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: AppRoute.buySellPortal.path,
        name: 'Buy-Sell Portal',
        builder: (context, state) => const BuySellPortalMain(),
      ),
      GoRoute(
        path: AppRoute.salePortal.path,
        name: 'Sale Portal',
        builder: (context, state) => const SalePortalMain(),
      ),
      GoRoute(
        path: AppRoute.futurePortal.path,
        name: 'Future Portal',
        builder: (context, state) => const FuturePortalMain(),
      ),
    ],
    // redirect: (context, state) {
    //   final bloc = context.read<AuthenticationBloc>();

    //   final isOnLogin = state.fullPath == AppRoute.login.path;
    //   final isOnSplash = state.fullPath == AppRoute.splash.path;

    //   final notInitialize = bloc.state is AuthenticationInitial;

    //   final isNotUnauthenticated = bloc.state is AuthenticationUnauthenticated;

    //   final isAuthenticated = bloc.state is AuthenticationAuthenticated;

    //   print(bloc.state);

    //   if (notInitialize && !isOnSplash) {
    //     return AppRoute.splash.path;
    //   }

    //   if (isNotUnauthenticated && !isOnLogin) {
    //     return AppRoute.login.path;
    //   }

    //   if (isAuthenticated && (isOnLogin || isOnSplash)) {
    //     return AppRoute.home.path;
    //   }

    //   return null;
    // },
    // refreshListenable:
    //     GoRouterRefreshStream(getIt<AuthenticationBloc>().stream),
  );
}

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
