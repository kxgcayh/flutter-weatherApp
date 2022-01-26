// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    WeatherPageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const WeatherPage());
    },
    WeatherDetailPageRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
          routeData: routeData, child: const WeatherDetailPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/weather', fullMatch: true),
        RouteConfig(WeatherPageRoute.name, path: '/weather', children: [
          RouteConfig(WeatherDetailPageRoute.name,
              path: 'detail', parent: WeatherPageRoute.name)
        ])
      ];
}

/// generated route for
/// [WeatherPage]
class WeatherPageRoute extends PageRouteInfo<void> {
  const WeatherPageRoute({List<PageRouteInfo>? children})
      : super(WeatherPageRoute.name,
            path: '/weather', initialChildren: children);

  static const String name = 'WeatherPageRoute';
}

/// generated route for
/// [WeatherDetailPage]
class WeatherDetailPageRoute extends PageRouteInfo<void> {
  const WeatherDetailPageRoute()
      : super(WeatherDetailPageRoute.name, path: 'detail');

  static const String name = 'WeatherDetailPageRoute';
}
