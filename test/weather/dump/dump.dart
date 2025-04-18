import 'package:super_app/features/weather/weather.dart';

const dummyLat = 10.0;
const dummyLong = 106.0;

const dummyCurrentWeather = WeatherResponse(
  name: 'Ho Chi Minh City',
  main: MainWeather(
    temp: 307.13,
    feelsLike: 308.0,
    tempMin: 305.0,
    tempMax: 309.0,
    pressure: 1005,
    seaLevel: 1005,
    grndLevel: 1000,
    humidity: 80,
    tempKf: 0.0,
  ),
  weather: [],
  base: '',
  visibility: 10000,
  wind: Wind(speed: 5.0, deg: 200, gust: 7.0),
  clouds: Clouds(all: 75),
  dt: 0,
  sys: Sys(
    type: 1,
    id: 1,
    country: 'VN',
    sunrise: 0,
    sunset: 0,
    pod: '',
  ),
  timezone: 25200,
  id: 1566083,
  cod: 200,
);

var dummyForecastResponse = ForecastResponse(
  cod: '200',
  message: 0,
  cnt: 4,
  list: dummyForecastList,
  city: const City(
    id: 1566083,
    name: 'Ho Chi Minh City',
    country: 'VN',
    population: 8425785,
    timezone: 25200,
    sunrise: 1618282134,
    sunset: 1618327377,
  ),
);

var dummyForecastList = <Forecast>[
  Forecast(
    dt: DateTime(2024, 3, 16, 12, 0, 0).millisecondsSinceEpoch,
    main: const MainWeather(temp: 28.0, humidity: 75),
    weather: const [Weather(description: 'Sunny')],
  ),
  Forecast(
    dt: DateTime(2024, 3, 17, 12, 0, 0).millisecondsSinceEpoch,
    main: const MainWeather(temp: 30.0, humidity: 70),
    weather: const [Weather(description: 'Cloudy')],
  ),
  Forecast(
    dt: DateTime(2024, 3, 18, 12, 0, 0).millisecondsSinceEpoch,
    main: const MainWeather(temp: 29.0, humidity: 65),
    weather: const [Weather(description: 'Rainy')],
  ),
  Forecast(
    dt: DateTime(2024, 3, 19, 12, 0, 0).millisecondsSinceEpoch,
    main: const MainWeather(temp: 27.0, humidity: 85),
    weather: const [Weather(description: 'Clear')],
  ),
];
