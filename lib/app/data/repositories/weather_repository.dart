import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/app/data/others/helpers.dart';
import 'package:weather/app/data/providers/weather_provider.dart';
import 'package:weather/app/data/models/weather_state.dart';

final weatherRepository = Provider<WeatherRepository>((ref) {
  final provider = ref.read(weatherProvider);
  return WeatherRepository(provider);
});

class WeatherRepository {
  WeatherRepository(this.provider);
  final WeatherProvider provider;

  WeatherProvider get _weatherProvider => provider;

  Future<BaseWeather?> fetchWeather({String? lat, String? lon}) {
    return _weatherProvider.fetchWeatherHandler(lat: lat, lon: lon);
  }
}

final weatherStateNotifier =
    StateNotifierProvider<WeatherStateNotifier, WeatherState>((ref) {
  final _repository = ref.read(weatherRepository);
  return WeatherStateNotifier(_repository);
});

// * WeatherStateNotifier
class WeatherStateNotifier extends StateNotifier<WeatherState> {
  WeatherStateNotifier(this._weatherRepository)
      : super(const WeatherState.initial());
  late BaseWeather? _baseWeather;
  final WeatherRepository _weatherRepository;

  void fetch() async {
    try {
      state = const WeatherState.loading();
      _baseWeather = await _weatherRepository.fetchWeather();
      if (_baseWeather != null) {
        state = WeatherState.data(
          weather: _baseWeather!,
          updatedAt: DateTime.now(),
        );
        logger.d(state);
      }
      // logger.i(state);
    } catch (e) {
      state = WeatherState.error('$e');
      // logger.e(state);
    }
  }
}
