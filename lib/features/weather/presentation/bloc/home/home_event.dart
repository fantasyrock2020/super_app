class HomeEvent {}

class InitialEvent extends HomeEvent {
  final double latitude;
  final double longitude;

  InitialEvent(this.latitude, this.longitude);
}

class ReloadEvent extends HomeEvent {}
