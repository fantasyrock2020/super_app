import 'package:mocktail/mocktail.dart';
import 'package:super_app/features/weather/weather.dart';

class MockHomeBloc extends Mock implements HomeBloc {}

class MockWeatherRepository extends Mock implements WeatherRepository {}
