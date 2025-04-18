import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
abstract class WeatherResponse with _$WeatherResponse {
  const WeatherResponse._();

  const factory WeatherResponse({
    @Default(<Weather>[]) List<Weather> weather,
    @Default('') String base,
    @Default(MainWeather()) MainWeather main,
    @Default(0) int visibility,
    @Default(Wind()) Wind wind,
    @Default(Clouds()) Clouds clouds,
    @Default(0) int dt,
    @Default(Sys()) Sys sys,
    @Default(0) int timezone,
    @Default(0) int id,
    @Default('') String name,
    @Default(0) int cod,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);
}

@freezed
abstract class Weather with _$Weather {
  const Weather._();

  const factory Weather({
    @Default(0) int id,
    @Default('') String main,
    @Default('') String description,
    @Default('') String icon,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}

@freezed
abstract class MainWeather with _$MainWeather {
  const MainWeather._();

  const factory MainWeather({
    @Default(0) double temp,
    @JsonKey(name: 'feels_like') @Default(0) double feelsLike,
    @JsonKey(name: 'temp_min') @Default(0) double tempMin,
    @JsonKey(name: 'temp_max') @Default(0) double tempMax,
    @Default(0) int pressure,
    @JsonKey(name: 'sea_level') @Default(0) int seaLevel,
    @JsonKey(name: 'grnd_level') @Default(0) int grndLevel,
    @Default(0) int humidity,
    @JsonKey(name: 'temp_kf') @Default(0) double tempKf,
  }) = _MainWeather;

  factory MainWeather.fromJson(Map<String, dynamic> json) =>
      _$MainWeatherFromJson(json);
}

@freezed
abstract class Wind with _$Wind {
  const Wind._();

  const factory Wind({
    @Default(0) double speed,
    @Default(0) int deg,
    @Default(0) double gust,
  }) = _Wind;

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}

@freezed
abstract class Clouds with _$Clouds {
  const Clouds._();

  const factory Clouds({
    @Default(0) int all,
  }) = _Clouds;

  factory Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);
}

@freezed
abstract class Sys with _$Sys {
  const Sys._();

  const factory Sys({
    @Default(0) int type,
    @Default(0) int id,
    @Default('') String country,
    @Default(0) int sunrise,
    @Default(0) int sunset,
    @Default('') String pod, // pod might be optional in current weather
  }) = _Sys;

  factory Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);
}
