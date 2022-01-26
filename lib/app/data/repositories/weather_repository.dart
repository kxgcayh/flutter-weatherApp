import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather/app/data/models/weather_model.dart';
import 'package:weather/app/data/others/helpers.dart';
import 'package:weather/app/data/providers/weather_provider.dart';

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

// * Weather Event
abstract class WeatherEvent extends Equatable {
  const WeatherEvent();

  @override
  List<Object> get props => [];
}

class GetWeather extends WeatherEvent {
  const GetWeather();

  @override
  List<Object> get props => [];
}

// * Weather State
abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {
  const WeatherInitial();

  @override
  List<Object> get props => [];
}

class WeatherLoading extends WeatherState {
  const WeatherLoading();

  @override
  List<Object> get props => [];
}

class WeatherLoaded extends WeatherState {
  const WeatherLoaded(this.baseWeather);
  final BaseWeather baseWeather;

  @override
  List<Object> get props => [baseWeather];
}

class WeatherError extends WeatherState {
  const WeatherError(this.message);
  final String message;

  @override
  List<Object> get props => [message];
}

final weatherStateNotifier =
    StateNotifierProvider<WeatherStateNotifier, WeatherState>((ref) {
  final _repository = ref.read(weatherRepository);
  return WeatherStateNotifier(_repository);
});

// * WeatherStateNotifier
class WeatherStateNotifier extends StateNotifier<WeatherState> {
  WeatherStateNotifier(this._weatherRepository) : super(const WeatherInitial());
  late BaseWeather? _baseWeather;
  final WeatherRepository _weatherRepository;

  void fetch() async {
    try {
      state = const WeatherLoading();
      _baseWeather = await _weatherRepository.fetchWeather();
      if (_baseWeather != null) state = WeatherLoaded(_baseWeather!);
      // logger.i(state);
    } catch (e) {
      state = WeatherError('$e');
      // logger.e(state);
    }
  }
}
