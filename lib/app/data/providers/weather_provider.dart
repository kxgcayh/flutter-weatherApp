import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/app/data/others/helpers.dart';
import 'package:weather/app/data/others/request_service.dart';

final weatherProvider = Provider((_) => WeatherProvider());

class WeatherProvider extends RequestService {
  late BaseWeather _baseWeather;
  late LazyBox<BaseWeather> _lazyWeatherBox;
  BaseWeather? _localBaseWeather;

  Future<BaseWeather?> fetchWeatherHandler({
    String? lat,
    String? lon,
  }) async {
    try {
      response = await getConnect(
        '?lat=${lat ?? ENV.LAT}&lon=${lon ?? ENV.LON}&units=metric&exclude=minutely',
      );
      _baseWeather = BaseWeather.fromJson(response.data);
      if (response.statusCode == 200) {
        _lazyWeatherBox = await Hive.openLazyBox<BaseWeather>(baseWeatherBox);
        await _lazyWeatherBox.put(baseWeatherBoxKey, _baseWeather);
        _localBaseWeather = await _lazyWeatherBox.get(baseWeatherBoxKey);
      }
      return _baseWeather;
    } catch (_) {
      _lazyWeatherBox = await Hive.openLazyBox<BaseWeather>(baseWeatherBox);
      _localBaseWeather = await _lazyWeatherBox.get(baseWeatherBoxKey);
      if (_localBaseWeather != null) return _localBaseWeather;
      if (_localBaseWeather == null) rethrow;
    }
  }
}
