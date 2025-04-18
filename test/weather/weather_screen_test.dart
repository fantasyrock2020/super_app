import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_app/features/weather/presentation/bloc/home/home_bloc.dart';
import 'package:super_app/features/weather/presentation/home.dart';

import '../helpers/mock.dart';

void main() {
  group('WeatherScreen', () {
    final HomeBloc homeBloc = MockHomeBloc();
    print(homeBloc);
    // setUp(() {
    //   when(
    //     () => homeBloc.stream,
    //   ).thenAnswer(
    //     (_) => const Stream<HomeState>.empty(),
    //   );
    //   when(
    //     () => homeBloc.add(InitialEvent()),
    //   ).thenAnswer((_) {});

    //   GetIt.instance.registerFactory(() => homeBloc);
    // });

    // testWidgets('renders WeatherScreen', (WidgetTester tester) async {
    //   when(() => homeBloc.state).thenReturn(HomeState());

    //   await tester.pumpWidget(MaterialApp(
    //     home: const WeatherHomeScreen(),
    //   ));
    //   expect(find.byType(WeatherHomeScreen), findsOneWidget);
    // });
  });
}
