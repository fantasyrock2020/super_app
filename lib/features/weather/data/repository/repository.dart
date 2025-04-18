import '../../domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

import '../model/forecast.dart';
import '../model/weather.dart';
import '../remote/remote_data_source.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource apiClient;

  WeatherRepositoryImpl(this.apiClient);

  @override
  Future<WeatherResponse?> loadCurrentWeather({
    required double lat,
    required double long,
  }) async {
    final res = await apiClient.loadCurrentWeather(lat: lat, long: long);
    return res;
  }

  @override
  Future<ForecastResponse?> loadForecast({
    required double lat,
    required double long,
  }) async {
    final res = await apiClient.loadForecast(lat: lat, long: long);
    return res;
  }
}
