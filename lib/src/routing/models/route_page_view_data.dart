import 'package:go_router/go_router.dart';

class RoutePageViewData {
  final Map<String, dynamic> searchParams;
  final String routePath;
  final String routeName;
  final String matchedLocation;
  final Map<String, dynamic> pathParameters;
  final String uri;

  const RoutePageViewData({
    required this.searchParams,
    required this.routePath,
    required this.routeName,
    required this.matchedLocation,
    required this.pathParameters,
    required this.uri,
  });

  factory RoutePageViewData.fromGoRouterState(GoRouterState state) {
    return RoutePageViewData(
      searchParams: {},
      routePath: state.fullPath ?? state.path ?? 'unknown',
      routeName: state.name ?? 'unknown',
      matchedLocation: state.matchedLocation,
      pathParameters: state.pathParameters,
      uri: state.uri.toString(),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'search_params': searchParams,
      'route_path': routePath,
      'route_name': routeName,
      'matched_location': matchedLocation,
      'path_parameters': pathParameters,
      'uri': uri,
    };
  }
}
