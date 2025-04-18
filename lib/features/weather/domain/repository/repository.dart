import '../../data/model/forecast.dart';
import '../../data/model/weather.dart';

abstract class WeatherRepository {
  Future<WeatherResponse?> loadCurrentWeather({
    required double lat,
    required double long,
  });
  Future<ForecastResponse?> loadForecast({
    required double lat,
    required double long,
  });
}
