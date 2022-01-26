import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather/app/app_router.dart';
import 'package:weather/app/data/models/weather_model.dart';

void main() async {
  await Hive.initFlutter();
  Hive
    ..registerAdapter(BaseWeatherAdapter())
    ..registerAdapter(CurrentAdapter())
    ..registerAdapter(HourlyAdapter())
    ..registerAdapter(DailyAdapter())
    ..registerAdapter(RainAdapter())
    ..registerAdapter(TempAdapter())
    ..registerAdapter(FeelsLikeAdapter())
    ..registerAdapter(WeatherAdapter());
  runApp(
    ProviderScope(child: WeatherApp()),
  );
}

class WeatherApp extends StatelessWidget {
  WeatherApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
