import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/const/strings.dart';
import '../../../../core/network/dio_client.dart';

import '../model/model.dart';
import 'remote_data_source.dart';

@LazySingleton(as: WeatherRemoteDataSource)
class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final DioClient _dioClient;
  final String baseUrl = 'https://api.openweathermap.org/data/2.5';

  WeatherRemoteDataSourceImpl(this._dioClient);

  @override
  Future<WeatherResponse?> loadCurrentWeather({
    required double lat,
    required double long,
  }) async {
    try {
      final res = await _dioClient.dio
          .get('/weather?lat=$lat&lon=$long&appid=${Strings.openWeatherKey}');
      if (res.statusCode == 200) {
        return WeatherResponse.fromJson(res.data as Map<String, dynamic>);
      }
    } catch (err) {
      debugPrint('$err');
    }
    return null;
  }

  @override
  Future<ForecastResponse?> loadForecast({
    required double lat,
    required double long,
  }) async {
    try {
      final res = await _dioClient.dio
          .get('/forecast?lat=$lat&lon=$long&appid=${Strings.openWeatherKey}');
      if (res.statusCode == 200) {
        return ForecastResponse.fromJson(res.data as Map<String, dynamic>);
      }
    } catch (err) {
      debugPrint('$err');
    }
    return null;
  }
}
