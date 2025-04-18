import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_app/features/weather/weather.dart';

import '../../helpers/mock.dart';
import '../dump/dump.dart';

void main() {
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
      'emits correct states when InitialEvent is added',
      build: () {
        when(() =>
                repository.loadCurrentWeather(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => dummyCurrentWeather);

        when(() => repository.loadForecast(lat: dummyLat, long: dummyLong))
            .thenAnswer((_) async => dummyForecastResponse);
        return weatherBloc;
      },
      act: (bloc) => bloc.add(InitialEvent(dummyLat, dummyLong)),
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
          forecasts: dummyForecastList,
        ),
        HomeState(
          loading: false,
          lat: dummyLat,
          long: dummyLong,
          currentWeather: dummyCurrentWeather,
          forecasts: dummyForecastList,
        ),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [loading, error] states when InitialEvent is added and (weather or forecast) fetch fails',
      build: () {
        when(() =>
                repository.loadCurrentWeather(lat: dummyLat, long: dummyLong))
            .thenThrow(Exception('Failed to fetch weather'));

        when(() => repository.loadForecast(lat: dummyLat, long: dummyLong))
            .thenThrow(Exception('Failed to fetch forecast'));
        return weatherBloc;
      },
      act: (bloc) => bloc.add(InitialEvent(dummyLat, dummyLong)),
      expect: () => [
        const HomeState(loading: true, lat: dummyLat, long: dummyLong),
        const HomeState(loading: false, lat: dummyLat, long: dummyLong),
      ],
    );
  });
}
