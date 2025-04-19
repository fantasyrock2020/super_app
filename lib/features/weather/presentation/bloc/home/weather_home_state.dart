import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/model.dart';

part 'weather_home_state.freezed.dart';
part 'weather_home_state.g.dart';

@freezed
abstract class WeatherHomeState with _$WeatherHomeState {
  const WeatherHomeState._();

  const factory WeatherHomeState({
    WeatherResponse? currentWeather,
    @Default(<Forecast>[]) List<Forecast> forecasts,
    @Default(true) bool loading,
    @Default(0) double lat,
    @Default(0) double long,
  }) = _ForecastResponse;

  factory WeatherHomeState.fromJson(Map<String, dynamic> json) =>
      _$WeatherHomeStateFromJson(json);
}
