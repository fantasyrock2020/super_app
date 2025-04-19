import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/extensions/extensions.dart';
import '../../../../../core/utils/utils.dart';
import '../../../data/model/model.dart';

import '../../../domain/repository/repository.dart';
import 'weather_home_event.dart';
import 'weather_home_state.dart';

export 'weather_home_event.dart';
export 'weather_home_state.dart';

@injectable
class WeatherHomeBloc extends Bloc<WeatherHomeEvent, WeatherHomeState> {
  WeatherHomeBloc(this._repository) : super(const WeatherHomeState()) {
    on<UpdateLocationEvent>(_onUpdateLocationEvent);
    on<LoadDataEvent>(_onLoadDataEvent);
    on<ReloadEvent>(_onReload);
  }

  final WeatherRepository _repository;

  FutureOr<void> _onUpdateLocationEvent(
    UpdateLocationEvent event,
    Emitter<WeatherHomeState> emit,
  ) async {
    emit(state.copyWith(
      lat: event.latitude,
      long: event.longitude,
    ));
  }

  Future<void> _loadCurrentWeather(
    Emitter<WeatherHomeState> emit,
  ) async {
    final res =
        await _repository.loadCurrentWeather(lat: state.lat, long: state.long);
    emit(state.copyWith(currentWeather: res));
  }

  Future<void> _loadForecast(
    Emitter<WeatherHomeState> emit,
  ) async {
    final res =
        await _repository.loadForecast(lat: state.lat, long: state.long);
    if (res != null) {
      emit(state.copyWith(forecasts: _getForecastsDaily(res.list)));
    }
  }

  List<Forecast> _getForecastsDaily(List<Forecast> list) {
    final List<Forecast> forcasts = <Forecast>[];
    for (final item in list) {
      final DateTime? dt = item.dt.millisecondToDateTime();
      if (CommonUtil.isToday(dt)) {
        continue;
      }
      final int index = forcasts.indexWhere(
          (x) => x.dt.millisecondToDateTime().toDate() == dt.toDate());
      if (index == -1) {
        forcasts.add(item);
        if (forcasts.length == 4) {
          break;
        }
      }
    }
    return forcasts;
  }

  FutureOr<void> _onLoadDataEvent(
    LoadDataEvent event,
    Emitter<WeatherHomeState> emit,
  ) async {
    if (state.lat != 0 && state.long != 0) {
      emit(state.copyWith(
        loading: true,
      ));
      await Future.wait([
        _loadCurrentWeather(emit),
        _loadForecast(emit),
      ]);
      emit(state.copyWith(loading: false));
    }
  }

  FutureOr<void> _onReload(
    ReloadEvent event,
    Emitter<WeatherHomeState> emit,
  ) {
    add(const LoadDataEvent());
  }
}
