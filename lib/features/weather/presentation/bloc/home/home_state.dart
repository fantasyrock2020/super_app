import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/model.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
abstract class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    WeatherResponse? currentWeather,
    @Default(<Forecast>[]) List<Forecast> forecasts,
    @Default(true) bool loading,
    @Default(0) double lat,
    @Default(0) double long,
  }) = _ForecastResponse;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
