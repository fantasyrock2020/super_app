import 'dart:async';

import '../model/model.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherResponse?> loadCurrentWeather({
    required double lat,
    required double long,
  });
  Future<ForecastResponse?> loadForecast({
    required double lat,
    required double long,
  });
}
