class AppRoute {
  final String name;
  final String path;
  final AppRoute? parentRoute;

  const AppRoute({required this.name, required this.path, this.parentRoute});

  String get fullPath =>
      parentRoute != null ? '${parentRoute!.fullPath}/$path' : path;

  @override
  String toString() {
    return 'AppRoute{name: $name, path: $path, parentRoute: ${parentRoute?.name}}';
  }
}

abstract class AppRoutes {}