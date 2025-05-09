import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_app/core/extensions/extensions.dart';
import 'package:super_app/core/utils/utils.dart';
import 'package:super_app/features/weather/weather.dart';

import '../helpers/mock.dart';
import '../dump/dump.dart';

void main() {
  List<Forecast> getForecastsDaily(ForecastResponse data) {
    final List<Forecast> forcasts = <Forecast>[];
    for (final item in data.list) {
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

  group('Weather bloc test', () {
    late WeatherRepository repository;
    late WeatherHomeBloc weatherBloc;

    setUp(() {
      WidgetsFlutterBinding.ensureInitialized();
      repository = MockWeatherRepository();
      weatherBloc = WeatherHomeBloc(repository);
    });

    tearDown(() {
      weatherBloc.close();
    });

    test('Initial state', () {
      expect(weatherBloc.state, const WeatherHomeState());
    });

    blocTest<WeatherHomeBloc, WeatherHomeState>(
      'emits correct states when UpdateLoadingStatusEvent is added',
      build: () {
        return weatherBloc;
      },
      act: (bloc) {
        bloc
          ..add(const UpdateLoadingStatusEvent(true))
          ..add(const UpdateLoadingStatusEvent(false));
      },
      expect: () => <WeatherHomeState>[
        const WeatherHomeState(loading: true),
        const WeatherHomeState(loading: false),
      ],
    );

    blocTest<WeatherHomeBloc, WeatherHomeState>(
      'emits correct states when UpdateLocationEvent is added',
      build: () {
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const UpdateLocationEvent(dummyLat, dummyLong)),
      expect: () => <WeatherHomeState>[
        const WeatherHomeState(
          lat: dummyLat,
          long: dummyLong,
        ),
      ],
    );

    blocTest<WeatherHomeBloc, WeatherHomeState>(
      'emits correct states when LoadDataEvent is added without latitude and longitude',
      build: () {
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const LoadDataEvent()),
      expect: () => <WeatherHomeState>[
        const WeatherHomeState(
          currentWeather: null,
          forecasts: [],
          loading: false,
          lat: null,
          long: null,
        ),
      ],
      verify: (_) {
        verifyNever(() =>
            repository.loadCurrentWeather(lat: dummyLat, long: dummyLong));
        verifyNever(
            () => repository.loadForecast(lat: dummyLat, long: dummyLong));
      },
    );

    blocTest<WeatherHomeBloc, WeatherHomeState>(
      'emits correct states when LoadDataEvent is added with full data',
      build: () {
        when(() =>
                repository.loadCurrentWeather(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => dummyCurrentWeather);

        when(() => repository.loadForecast(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => dummyForecastResponse);
        return weatherBloc..add(const UpdateLocationEvent(dummyLat, dummyLong));
      },
      act: (bloc) => bloc.add(const LoadDataEvent()),
      expect: () => <WeatherHomeState>[
        const WeatherHomeState(
          loading: true,
          lat: dummyLat,
          long: dummyLong,
        ),
        const WeatherHomeState(
          loading: true,
          lat: dummyLat,
          long: dummyLong,
          currentWeather: dummyCurrentWeather,
        ),
        WeatherHomeState(
          loading: true,
          lat: dummyLat,
          long: dummyLong,
          currentWeather: dummyCurrentWeather,
          forecasts: getForecastsDaily(dummyForecastResponse),
        ),
        WeatherHomeState(
          loading: false,
          lat: dummyLat,
          long: dummyLong,
          currentWeather: dummyCurrentWeather,
          forecasts: getForecastsDaily(dummyForecastResponse),
        ),
      ],
      verify: (_) {
        verify(() =>
                repository.loadCurrentWeather(lat: dummyLat, long: dummyLong))
            .called(1);
        verify(() => repository.loadForecast(lat: dummyLat, long: dummyLong))
            .called(1);
      },
    );

    blocTest<WeatherHomeBloc, WeatherHomeState>(
      'emits correct states when LoadDataEvent is added with response empty data',
      build: () {
        when(() =>
                repository.loadCurrentWeather(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => null);

        when(() => repository.loadForecast(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => null);
        return weatherBloc..add(const UpdateLocationEvent(dummyLat, dummyLong));
      },
      act: (bloc) => bloc.add(const LoadDataEvent()),
      expect: () => [
        const WeatherHomeState(loading: true, lat: dummyLat, long: dummyLong),
        const WeatherHomeState(loading: false, lat: dummyLat, long: dummyLong),
      ],
      verify: (_) {
        verify(() =>
                repository.loadCurrentWeather(lat: dummyLat, long: dummyLong))
            .called(1);
        verify(() => repository.loadForecast(lat: dummyLat, long: dummyLong))
            .called(1);
      },
    );

    test('verify get 4 days except now in ForecaseResponse', () {
      expect(getForecastsDaily(dummyForecastResponse), dummyForecastDailyList);
    });
  });
}
