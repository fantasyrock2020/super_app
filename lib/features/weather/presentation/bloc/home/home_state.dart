import '../../../data/model/model.dart';

class HomeState {
  final WeatherResponse? currentWeather;
  final List<Forecast> forecasts;
  final bool loading;
  final double lat;
  final double long;

  HomeState({
    this.currentWeather,
    this.forecasts = const [],
    this.loading = true,
    this.lat = 0,
    this.long = 0,
  });

  HomeState copyWith({
    WeatherResponse? currentWeather,
    List<Forecast>? forecasts,
    bool? loading,
    double? lat,
    double? long,
  }) {
    return HomeState(
      currentWeather: currentWeather ?? this.currentWeather,
      forecasts: forecasts ?? this.forecasts,
      loading: loading ?? this.loading,
      lat: lat ?? this.lat,
      long: long ?? this.long,
    );
  }
}
