import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/app/data/models/weather_model.dart';

part 'weather_state.freezed.dart';

extension WeatherGetters on WeatherState {
  bool get isLoading => this is _WeatherStateLoading;
}

@freezed
abstract class WeatherState with _$WeatherState {
  ///Initial
  const factory WeatherState.initial() = _WeatherStateInitial;

  ///Loading
  const factory WeatherState.loading() = _WeatherStateLoading;

  ///Data
  const factory WeatherState.data({
    required BaseWeather weather,
    required DateTime updatedAt,
  }) = _WeatherStateData;

  ///Error
  const factory WeatherState.error([String? error]) = _WeatherStateError;
}
