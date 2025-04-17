class HomeState {
  final List currentWeather;
  final List forecast;
  final bool loading;
  final double lat;
  final double long;

  HomeState({
    this.currentWeather = const [],
    this.forecast = const [],
    this.loading = false,
    this.lat = 0,
    this.long = 0,
  });

  HomeState copyWith({
    List? currentWeather,
    List? forecast,
    bool? loading,
    double? lat,
    double? long,
  }) {
    return HomeState(
      currentWeather: currentWeather ?? this.currentWeather,
      forecast: forecast ?? this.forecast,
      loading: loading ?? this.loading,
      lat: lat ?? this.lat,
      long: long ?? this.long,
    );
  }
}
