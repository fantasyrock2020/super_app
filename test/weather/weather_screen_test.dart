import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_app/core/extensions/extensions.dart';
import 'package:super_app/features/weather/presentation/bloc/home/weather_home_bloc.dart';
import 'package:super_app/features/weather/presentation/home.dart';
import 'package:super_app/features/weather/presentation/widget/home/error.dart';
import 'package:super_app/features/weather/presentation/widget/home/item.dart';
import 'package:super_app/features/weather/presentation/widget/home/loading.dart';

import 'helpers/mock.dart';
import 'dump/dump.dart';

void main() {
  group('WeatherScreen', () {
    final WeatherHomeBloc weatherHomeBloc = MockWeatherHomeBloc();

    setUp(() {
      GetIt.instance.registerFactory(() => weatherHomeBloc);
      when(
        () => weatherHomeBloc.stream,
      ).thenAnswer(
        (_) => const Stream<WeatherHomeState>.empty(),
      );
    });

    tearDown(() {
      GetIt.instance.unregister<WeatherHomeBloc>();
    });

    testWidgets('Show WeatherLoadingWidget when loading', (tester) async {
      when(() => weatherHomeBloc.state)
          .thenReturn(const WeatherHomeState(loading: true));

      await tester.pumpWidget(
        const MaterialApp(
          home: WeatherHomeScreen(),
        ),
      );

      expect(find.byType(WeatherLoadingWidget), findsOneWidget);
    });

    testWidgets(
      'Show WeatherErrorWidget when load finish with empty data',
      (tester) async {
        when(() => weatherHomeBloc.state)
            .thenReturn(const WeatherHomeState(loading: false));

        await tester.pumpWidget(
          const MaterialApp(
            home: WeatherHomeScreen(),
          ),
        );

        expect(find.byType(WeatherErrorWidget), findsOneWidget);
      },
    );

    testWidgets(
      'Show weather data when loaded successfully',
      (tester) async {
        when(() => weatherHomeBloc.state).thenReturn(WeatherHomeState(
          loading: false,
          lat: dummyLat,
          long: dummyLong,
          currentWeather: dummyCurrentWeather,
          forecasts: dummyForecastDailyList,
        ));

        await tester.pumpWidget(
          const MaterialApp(
            home: WeatherHomeScreen(),
          ),
        );

        expect(
          find.text('${dummyCurrentWeather.main.temp.kelvinToCelsius()}°'),
          findsOneWidget,
        );
        expect(find.text(dummyCurrentWeather.name), findsOneWidget);
        expect(
          find.byType(WeatherRow),
          findsNWidgets(dummyForecastDailyList.length),
        );
      },
    );

    testWidgets('Load data again when retry button is tapped', (tester) async {
      when(() => weatherHomeBloc.state)
          .thenReturn(const WeatherHomeState(loading: false));

      await tester.pumpWidget(
        const MaterialApp(
          home: WeatherHomeScreen(),
        ),
      );

      expect(find.byType(WeatherErrorWidget), findsOneWidget);
      final retryButton = find.byType(ElevatedButton);
      expect(retryButton, findsOneWidget);
    });
  });
}
