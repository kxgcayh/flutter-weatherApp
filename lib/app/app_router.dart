import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:weather/app/pages/weathers/weather_detail_page.dart';
import 'package:weather/app/pages/weathers/weather_page.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: '/weather',
      page: WeatherPage,
      children: [
        AutoRoute(path: 'detail', page: WeatherDetailPage),
      ],
    ),
  ],
)
class AppRouter extends _$AppRouter {}
