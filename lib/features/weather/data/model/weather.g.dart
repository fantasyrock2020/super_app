// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) =>
    _WeatherResponse(
      weather: (json['weather'] as List<dynamic>?)
              ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Weather>[],
      base: json['base'] as String? ?? '',
      main: json['main'] == null
          ? const MainWeather()
          : MainWeather.fromJson(json['main'] as Map<String, dynamic>),
      visibility: (json['visibility'] as num?)?.toInt() ?? 0,
      wind: json['wind'] == null
          ? const Wind()
          : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      clouds: json['clouds'] == null
          ? const Clouds()
          : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
      dt: (json['dt'] as num?)?.toInt() ?? 0,
      sys: json['sys'] == null
          ? const Sys()
          : Sys.fromJson(json['sys'] as Map<String, dynamic>),
      timezone: (json['timezone'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      cod: (json['cod'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$WeatherResponseToJson(_WeatherResponse instance) =>
    <String, dynamic>{
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'base': instance.base,
      'main': instance.main.toJson(),
      'visibility': instance.visibility,
      'wind': instance.wind.toJson(),
      'clouds': instance.clouds.toJson(),
      'dt': instance.dt,
      'sys': instance.sys.toJson(),
      'timezone': instance.timezone,
      'id': instance.id,
      'name': instance.name,
      'cod': instance.cod,
    };

_Weather _$WeatherFromJson(Map<String, dynamic> json) => _Weather(
      id: (json['id'] as num?)?.toInt() ?? 0,
      main: json['main'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
    );

Map<String, dynamic> _$WeatherToJson(_Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_MainWeather _$MainWeatherFromJson(Map<String, dynamic> json) => _MainWeather(
      temp: (json['temp'] as num?)?.toDouble() ?? 0,
      feelsLike: (json['feels_like'] as num?)?.toDouble() ?? 0,
      tempMin: (json['temp_min'] as num?)?.toDouble() ?? 0,
      tempMax: (json['temp_max'] as num?)?.toDouble() ?? 0,
      pressure: (json['pressure'] as num?)?.toInt() ?? 0,
      seaLevel: (json['sea_level'] as num?)?.toInt() ?? 0,
      grndLevel: (json['grnd_level'] as num?)?.toInt() ?? 0,
      humidity: (json['humidity'] as num?)?.toInt() ?? 0,
      tempKf: (json['temp_kf'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$MainWeatherToJson(_MainWeather instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
      'pressure': instance.pressure,
      'sea_level': instance.seaLevel,
      'grnd_level': instance.grndLevel,
      'humidity': instance.humidity,
      'temp_kf': instance.tempKf,
    };

_Wind _$WindFromJson(Map<String, dynamic> json) => _Wind(
      speed: (json['speed'] as num?)?.toDouble() ?? 0,
      deg: (json['deg'] as num?)?.toInt() ?? 0,
      gust: (json['gust'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$WindToJson(_Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };

_Clouds _$CloudsFromJson(Map<String, dynamic> json) => _Clouds(
      all: (json['all'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CloudsToJson(_Clouds instance) => <String, dynamic>{
      'all': instance.all,
    };

_Sys _$SysFromJson(Map<String, dynamic> json) => _Sys(
      type: (json['type'] as num?)?.toInt() ?? 0,
      id: (json['id'] as num?)?.toInt() ?? 0,
      country: json['country'] as String? ?? '',
      sunrise: (json['sunrise'] as num?)?.toInt() ?? 0,
      sunset: (json['sunset'] as num?)?.toInt() ?? 0,
      pod: json['pod'] as String? ?? '',
    );

Map<String, dynamic> _$SysToJson(_Sys instance) => <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'country': instance.country,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'pod': instance.pod,
    };
