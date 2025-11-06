import 'package:flutter/material.dart';

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    debugPrint(
      'GoRouter: pushed ${route.settings.name ?? route.settings.arguments}',
    );
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    debugPrint(
      'GoRouter: popped ${route.settings.name ?? route.settings.arguments}',
    );
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    debugPrint(
      'GoRouter: removed ${route.settings.name ?? route.settings.arguments}',
    );
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    debugPrint(
      'GoRouter: replaced ${oldRoute?.settings.name} with ${newRoute?.settings.name}',
    );
  }
}
