import 'package:dio/dio.dart';
import 'package:super_app/core/const/strings.dart';

import '../domain/repository.dart';
import 'package:injectable/injectable.dart';

import 'model/forecast.dart';
import 'model/weather.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final Dio dio = Dio();
  final String baseUrl = 'https://api.openweathermap.org/data/2.5';

  @override
  Future<WeatherResponse?> loadCurrentWeather({
    required double lat,
    required double long,
  }) async {
    try {
      var res = await dio
          .get('/weather?lat=$lat&lon=$long&appid=${Strings.openWeatherKey}');
      if (res.statusCode == 200) {}
    } catch (_) {}
    return null;
  }

  @override
  Future<ForecastResponse?> loadForecast({
    required double lat,
    required double long,
  }) async {
    try {
      var res = await dio
          .get('/forecast?lat=$lat&lon=$long&appid=${Strings.openWeatherKey}');
      if (res.statusCode == 200) {}
    } catch (_) {}
    return null;
  }
}
