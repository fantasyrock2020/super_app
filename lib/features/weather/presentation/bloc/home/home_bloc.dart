import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/extensions/extensions.dart';
import '../../../../../core/utils/utils.dart';
import '../../../data/model/model.dart';

import '../../../domain/repository/repository.dart';
import 'home_event.dart';
import 'home_state.dart';

export 'home_event.dart';
export 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._repository) : super(const HomeState()) {
    on<InitialEvent>(_onInitialEvent);
    on<ReloadEvent>(_onReload);
  }

  final WeatherRepository _repository;

  FutureOr<void> _onInitialEvent(
    InitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
      loading: true,
      lat: event.latitude,
      long: event.longitude,
    ));
    await Future.wait([
      _loadCurrentWeather(emit),
      _loadForecast(emit),
    ]);
    emit(state.copyWith(loading: false));
  }

  Future<void> _loadCurrentWeather(
    Emitter<HomeState> emit,
  ) async {
    final res =
        await _repository.loadCurrentWeather(lat: state.lat, long: state.long);
    emit(state.copyWith(currentWeather: res));
  }

  Future<void> _loadForecast(
    Emitter<HomeState> emit,
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

  FutureOr<void> _onReload(
    ReloadEvent event,
    Emitter<HomeState> emit,
  ) {
    add(InitialEvent(state.lat, state.long));
  }
}
