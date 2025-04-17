class HomeEvent {}

class UpdateLocation extends HomeEvent {
  final double lat;
  final double long;

  UpdateLocation({required this.lat, required this.long});
}

class LoadCurrentWeather extends HomeEvent {}

class LoadForecast extends HomeEvent {}

class Reload extends HomeEvent {}

class UpdateStatus extends HomeEvent {}
