import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:wfmge/src/routing/exports.dart';

class AppRouter {
  late GoRouter _appRouter;

  final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'rootNavigatorKey',
  );

  AppRouter() {
    _appRouter = GoRouter(
      observers: [GoRouterObserver()],
      navigatorKey: _rootNavigatorKey,
      redirectLimit: 5,
      requestFocus: true,
      debugLogDiagnostics: true,
      routes: [],
    );
  }
}
