import 'package:freezed_annotation/freezed_annotation.dart';
import 'weather.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
abstract class ForecastResponse with _$ForecastResponse {
  const ForecastResponse._();

  const factory ForecastResponse({
    @Default('') String cod,
    @Default(0) int message,
    @Default(0) int cnt,
    @Default(<Forecast>[]) List<Forecast> list,
    @Default(City()) City city,
  }) = _ForecastResponse;

  factory ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);
}

@freezed
abstract class Forecast with _$Forecast {
  const Forecast._();

  const factory Forecast({
    @Default(0) int dt,
    @Default(MainWeather()) MainWeather main,
    @Default(<Weather>[]) List<Weather> weather,
    @Default(Clouds()) Clouds clouds,
    @Default(Wind()) Wind wind,
    @Default(0) int visibility,
    @Default(0) double pop,
    @Default(Sys()) Sys sys,
    @JsonKey(name: 'dt_txt') @Default('') String dtTxt,
  }) = _Forecast;

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}

@freezed
abstract class City with _$City {
  const City._();

  const factory City({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String country,
    @Default(0) int population,
    @Default(0) int timezone,
    @Default(0) int sunrise,
    @Default(0) int sunset,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
