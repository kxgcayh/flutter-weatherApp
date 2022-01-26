import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/app/data/others/helpers.dart';
import 'package:weather/app/data/others/request_service.dart';

final weatherProvider = Provider((_) => WeatherProvider());

class WeatherProvider extends RequestService {
  Future<BaseWeather?> fetchWeatherHandler({
    String? lat,
    String? lon,
  }) async {
    BaseWeather baseWeather;
    try {
      response = await getConnect(
        '?lat=${lat ?? ENV.LAT}&lon=${lon ?? ENV.LON}&units=metric&exclude=minutely',
      );
      baseWeather = BaseWeather.fromJson(response.data);
      logger.i(baseWeather);
      return baseWeather;
    } catch (e) {
      logger.e(e);
      // print(response.data);
    }
  }
}
