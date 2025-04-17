import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<UpdateLocation>(_onUpdateLocation);
    on<LoadCurrentWeather>(_onLoadCurrentWeather);
    on<LoadForecast>(_onLoadForecast);
    on<Reload>(_onReload);
    on<UpdateStatus>(_onUpdateStatus);
  }

  FutureOr<void> _onUpdateLocation(
    UpdateLocation event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(
      lat: event.lat,
      long: event.long,
    ));
  }

  FutureOr<void> _onLoadCurrentWeather(
    LoadCurrentWeather event,
    Emitter<HomeState> emit,
  ) {}

  FutureOr<void> _onLoadForecast(
    LoadForecast event,
    Emitter<HomeState> emit,
  ) {}

  FutureOr<void> _onReload(
    Reload event,
    Emitter<HomeState> emit,
  ) {}

  FutureOr<void> _onUpdateStatus(
    UpdateStatus event,
    Emitter<HomeState> emit,
  ) {
    emit(state.copyWith(
      loading: !state.loading,
    ));
  }
}
