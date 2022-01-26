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
      final args = routeData.argsAs<WeatherDetailPageRouteArgs>();
      return AdaptivePage<dynamic>(
          routeData: routeData,
          child: WeatherDetailPage(args.data, key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig('/#redirect',
            path: '/', redirectTo: '/weather', fullMatch: true),
        RouteConfig(WeatherPageRoute.name, path: '/weather'),
        RouteConfig(WeatherDetailPageRoute.name, path: '/weather/detail')
      ];
}

/// generated route for
/// [WeatherPage]
class WeatherPageRoute extends PageRouteInfo<void> {
  const WeatherPageRoute() : super(WeatherPageRoute.name, path: '/weather');

  static const String name = 'WeatherPageRoute';
}

/// generated route for
/// [WeatherDetailPage]
class WeatherDetailPageRoute extends PageRouteInfo<WeatherDetailPageRouteArgs> {
  WeatherDetailPageRoute({required BaseWeather data, Key? key})
      : super(WeatherDetailPageRoute.name,
            path: '/weather/detail',
            args: WeatherDetailPageRouteArgs(data: data, key: key));

  static const String name = 'WeatherDetailPageRoute';
}

class WeatherDetailPageRouteArgs {
  const WeatherDetailPageRouteArgs({required this.data, this.key});

  final BaseWeather data;

  final Key? key;

  @override
  String toString() {
    return 'WeatherDetailPageRouteArgs{data: $data, key: $key}';
  }
}
