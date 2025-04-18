// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) =>
    _ForecastResponse(
      cod: json['cod'] as String? ?? '',
      message: (json['message'] as num?)?.toInt() ?? 0,
      cnt: (json['cnt'] as num?)?.toInt() ?? 0,
      list: (json['list'] as List<dynamic>?)
              ?.map((e) => Forecast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Forecast>[],
      city: json['city'] == null
          ? const City()
          : City.fromJson(json['city'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ForecastResponseToJson(_ForecastResponse instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.list.map((e) => e.toJson()).toList(),
      'city': instance.city.toJson(),
    };

_Forecast _$ForecastFromJson(Map<String, dynamic> json) => _Forecast(
      dt: (json['dt'] as num?)?.toInt() ?? 0,
      main: json['main'] == null
          ? const MainWeather()
          : MainWeather.fromJson(json['main'] as Map<String, dynamic>),
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Weather>[],
      clouds: json['clouds'] == null
          ? const Clouds()
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      wind: json['wind'] == null
          ? const Wind()
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toInt() ?? 0,
      pop: (json['pop'] as num?)?.toDouble() ?? 0,
      sys: json['sys'] == null
          ? const Sys()
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      dtTxt: json['dt_txt'] as String? ?? '',
    );

Map<String, dynamic> _$ForecastToJson(_Forecast instance) => <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main.toJson(),
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'clouds': instance.clouds.toJson(),
      'wind': instance.wind.toJson(),
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys.toJson(),
      'dt_txt': instance.dtTxt,
    };

_City _$CityFromJson(Map<String, dynamic> json) => _City(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      country: json['country'] as String? ?? '',
      population: (json['population'] as num?)?.toInt() ?? 0,
      timezone: (json['timezone'] as num?)?.toInt() ?? 0,
      sunrise: (json['sunrise'] as num?)?.toInt() ?? 0,
      sunset: (json['sunset'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CityToJson(_City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'population': instance.population,
      'timezone': instance.timezone,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
    };
