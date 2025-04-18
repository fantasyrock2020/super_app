// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) =>
    _ForecastResponse(
      currentWeather: json['currentWeather'] == null
          ? null
          : WeatherResponse.fromJson(
              json['currentWeather'] as Map<String, dynamic>),
      forecasts: (json['forecasts'] as List<dynamic>?)
              ?.map((e) => Forecast.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Forecast>[],
      loading: json['loading'] as bool? ?? true,
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      long: (json['long'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ForecastResponseToJson(_ForecastResponse instance) =>
    <String, dynamic>{
      if (instance.currentWeather?.toJson() case final value?)
        'currentWeather': value,
      'forecasts': instance.forecasts.map((e) => e.toJson()).toList(),
      'loading': instance.loading,
      'lat': instance.lat,
      'long': instance.long,
    };
