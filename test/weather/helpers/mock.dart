import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:super_app/features/weather/weather.dart';

class MockWeatherHomeBloc extends MockBloc<WeatherHomeEvent, WeatherHomeState>
    implements WeatherHomeBloc {}

class MockWeatherRepository extends Mock implements WeatherRepository {}
