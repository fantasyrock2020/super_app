import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_app/core/extensions/extensions.dart';
import 'package:super_app/core/utils/utils.dart';
import 'package:super_app/features/weather/weather.dart';

import '../../helpers/mock.dart';
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
    late HomeBloc weatherBloc;

    setUp(() {
      WidgetsFlutterBinding.ensureInitialized();
      repository = MockWeatherRepository();
      weatherBloc = HomeBloc(repository);
    });

    tearDown(() {
      weatherBloc.close();
    });

    test('Initial state', () {
      expect(weatherBloc.state, const HomeState());
    });

    blocTest<HomeBloc, HomeState>(
      'emits correct states when UpdateLocationEvent is added',
      build: () {
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const UpdateLocationEvent(dummyLat, dummyLong)),
      expect: () => <HomeState>[
        const HomeState(
          lat: dummyLat,
          long: dummyLong,
        ),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits correct states when LoadDataEvent is added without latitude and longitude',
      build: () {
        return weatherBloc;
      },
      act: (bloc) => bloc.add(const LoadDataEvent()),
      expect: () => <HomeState>[],
      verify: (_) {
        verifyNever(() =>
            repository.loadCurrentWeather(lat: dummyLat, long: dummyLong));
        verifyNever(
            () => repository.loadForecast(lat: dummyLat, long: dummyLong));
      },
    );

    blocTest<HomeBloc, HomeState>(
      'emits correct states when LoadDataEvent is added and have data',
      build: () {
        when(() =>
                repository.loadCurrentWeather(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => dummyCurrentWeather);

        when(() => repository.loadForecast(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => dummyForecastResponse);
        return weatherBloc..add(const UpdateLocationEvent(dummyLat, dummyLong));
      },
      act: (bloc) => bloc.add(const LoadDataEvent()),
      expect: () => <HomeState>[
        const HomeState(
          loading: true,
          lat: dummyLat,
          long: dummyLong,
        ),
        const HomeState(
          loading: true,
          lat: dummyLat,
          long: dummyLong,
          currentWeather: dummyCurrentWeather,
        ),
        HomeState(
          loading: true,
          lat: dummyLat,
          long: dummyLong,
          currentWeather: dummyCurrentWeather,
          forecasts: getForecastsDaily(dummyForecastResponse),
        ),
        HomeState(
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

    blocTest<HomeBloc, HomeState>(
      'emits correct states when LoadDataEvent is added and empty data',
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
        const HomeState(loading: true, lat: dummyLat, long: dummyLong),
        const HomeState(loading: false, lat: dummyLat, long: dummyLong),
      ],
      verify: (_) {
        verify(() =>
                repository.loadCurrentWeather(lat: dummyLat, long: dummyLong))
            .called(1);
        verify(() => repository.loadForecast(lat: dummyLat, long: dummyLong))
            .called(1);
      },
    );

    blocTest<HomeBloc, HomeState>(
      'emits correct states when ReloadEvent is added',
      build: () {
        when(() =>
                repository.loadCurrentWeather(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => dummyCurrentWeather);
        when(() => repository.loadForecast(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => dummyForecastResponse);
        return weatherBloc..add(const UpdateLocationEvent(dummyLat, dummyLong));
      },
      act: (bloc) => bloc.add(const ReloadEvent()),
      expect: () => <HomeState>[
        const HomeState(
          loading: true,
          lat: dummyLat,
          long: dummyLong,
        ),
        const HomeState(
          loading: true,
          lat: dummyLat,
          long: dummyLong,
          currentWeather: dummyCurrentWeather,
        ),
        HomeState(
          loading: true,
          lat: dummyLat,
          long: dummyLong,
          currentWeather: dummyCurrentWeather,
          forecasts: getForecastsDaily(dummyForecastResponse),
        ),
        HomeState(
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

    test('verify get 4 days except now in ForecaseResponse', () {
      expect(getForecastsDaily(dummyForecastResponse), dummyForecastDailyList);
    });
  });
}
