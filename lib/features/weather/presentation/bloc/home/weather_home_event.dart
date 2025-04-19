class WeatherHomeEvent {
  const WeatherHomeEvent();
}

class UpdateLocationEvent extends WeatherHomeEvent {
  final double latitude;
  final double longitude;

  const UpdateLocationEvent(this.latitude, this.longitude);
}

class LoadDataEvent extends WeatherHomeEvent {
  const LoadDataEvent();
}

class ReloadEvent extends WeatherHomeEvent {
  const ReloadEvent();
}
