// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherHomeState _$WeatherHomeStateFromJson(Map<String, dynamic> json) =>
    _WeatherHomeState(
      currentWeather: json['currentWeather'] == null
          ? null
          : WeatherResponse.fromJson(
              json['currentWeather'] as Map<String, dynamic>),
      forecasts: (json['forecasts'] as List<dynamic>?)
              ?.map((e) => Forecast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Forecast>[],
      loading: json['loading'] as bool? ?? true,
      lat: (json['lat'] as num?)?.toDouble(),
      long: (json['long'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherHomeStateToJson(_WeatherHomeState instance) =>
    <String, dynamic>{
      if (instance.currentWeather?.toJson() case final value?)
        'currentWeather': value,
      'forecasts': instance.forecasts.map((e) => e.toJson()).toList(),
      'loading': instance.loading,
      if (instance.lat case final value?) 'lat': value,
      if (instance.long case final value?) 'long': value,
    };
