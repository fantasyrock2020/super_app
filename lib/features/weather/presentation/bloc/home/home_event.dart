class HomeEvent {
  const HomeEvent();
}

class UpdateLocationEvent extends HomeEvent {
  final double latitude;
  final double longitude;

  const UpdateLocationEvent(this.latitude, this.longitude);
}

class LoadDataEvent extends HomeEvent {
  const LoadDataEvent();
}

class ReloadEvent extends HomeEvent {
  const ReloadEvent();
}
