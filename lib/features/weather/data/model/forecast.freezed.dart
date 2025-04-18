// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ForecastResponse {
  String get cod;
  int get message;
  int get cnt;
  List<Forecast> get list;
  City get city;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForecastResponseCopyWith<ForecastResponse> get copyWith =>
      _$ForecastResponseCopyWithImpl<ForecastResponse>(
          this as ForecastResponse, _$identity);

  /// Serializes this ForecastResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ForecastResponse &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other.list, list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt,
      const DeepCollectionEquality().hash(list), city);

  @override
  String toString() {
    return 'ForecastResponse(cod: $cod, message: $message, cnt: $cnt, list: $list, city: $city)';
  }
}

/// @nodoc
abstract mixin class $ForecastResponseCopyWith<$Res> {
  factory $ForecastResponseCopyWith(
          ForecastResponse value, $Res Function(ForecastResponse) _then) =
      _$ForecastResponseCopyWithImpl;
  @useResult
  $Res call({String cod, int message, int cnt, List<Forecast> list, City city});

  $CityCopyWith<$Res> get city;
}

/// @nodoc
class _$ForecastResponseCopyWithImpl<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  _$ForecastResponseCopyWithImpl(this._self, this._then);

  final ForecastResponse _self;
  final $Res Function(ForecastResponse) _then;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_self.copyWith(
      cod: null == cod
          ? _self.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _self.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Forecast>,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_self.city, (value) {
      return _then(_self.copyWith(city: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ForecastResponse extends ForecastResponse {
  const _ForecastResponse(
      {this.cod = '',
      this.message = 0,
      this.cnt = 0,
      final List<Forecast> list = const <Forecast>[],
      this.city = const City()})
      : _list = list,
        super._();
  factory _ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);

  @override
  @JsonKey()
  final String cod;
  @override
  @JsonKey()
  final int message;
  @override
  @JsonKey()
  final int cnt;
  final List<Forecast> _list;
  @override
  @JsonKey()
  List<Forecast> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final City city;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForecastResponseCopyWith<_ForecastResponse> get copyWith =>
      __$ForecastResponseCopyWithImpl<_ForecastResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForecastResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForecastResponse &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt,
      const DeepCollectionEquality().hash(_list), city);

  @override
  String toString() {
    return 'ForecastResponse(cod: $cod, message: $message, cnt: $cnt, list: $list, city: $city)';
  }
}

/// @nodoc
abstract mixin class _$ForecastResponseCopyWith<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  factory _$ForecastResponseCopyWith(
          _ForecastResponse value, $Res Function(_ForecastResponse) _then) =
      __$ForecastResponseCopyWithImpl;
  @override
  @useResult
  $Res call({String cod, int message, int cnt, List<Forecast> list, City city});

  @override
  $CityCopyWith<$Res> get city;
}

/// @nodoc
class __$ForecastResponseCopyWithImpl<$Res>
    implements _$ForecastResponseCopyWith<$Res> {
  __$ForecastResponseCopyWithImpl(this._self, this._then);

  final _ForecastResponse _self;
  final $Res Function(_ForecastResponse) _then;

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cod = null,
    Object? message = null,
    Object? cnt = null,
    Object? list = null,
    Object? city = null,
  }) {
    return _then(_ForecastResponse(
      cod: null == cod
          ? _self.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as int,
      cnt: null == cnt
          ? _self.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _self._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Forecast>,
      city: null == city
          ? _self.city
          : city // ignore: cast_nullable_to_non_nullable
              as City,
    ));
  }

  /// Create a copy of ForecastResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CityCopyWith<$Res> get city {
    return $CityCopyWith<$Res>(_self.city, (value) {
      return _then(_self.copyWith(city: value));
    });
  }
}

/// @nodoc
mixin _$Forecast {
  int get dt;
  MainWeather get main;
  List<Weather> get weather;
  Clouds get clouds;
  Wind get wind;
  int get visibility;
  double get pop;
  Sys get sys;
  @JsonKey(name: 'dt_txt')
  String get dtTxt;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ForecastCopyWith<Forecast> get copyWith =>
      _$ForecastCopyWithImpl<Forecast>(this as Forecast, _$identity);

  /// Serializes this Forecast to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Forecast &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      main,
      const DeepCollectionEquality().hash(weather),
      clouds,
      wind,
      visibility,
      pop,
      sys,
      dtTxt);

  @override
  String toString() {
    return 'Forecast(dt: $dt, main: $main, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, sys: $sys, dtTxt: $dtTxt)';
  }
}

/// @nodoc
abstract mixin class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) _then) =
      _$ForecastCopyWithImpl;
  @useResult
  $Res call(
      {int dt,
      MainWeather main,
      List<Weather> weather,
      Clouds clouds,
      Wind wind,
      int visibility,
      double pop,
      Sys sys,
      @JsonKey(name: 'dt_txt') String dtTxt});

  $MainWeatherCopyWith<$Res> get main;
  $CloudsCopyWith<$Res> get clouds;
  $WindCopyWith<$Res> get wind;
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res> implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._self, this._then);

  final Forecast _self;
  final $Res Function(Forecast) _then;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = null,
    Object? visibility = null,
    Object? pop = null,
    Object? sys = null,
    Object? dtTxt = null,
  }) {
    return _then(_self.copyWith(
      dt: null == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeather,
      weather: null == weather
          ? _self.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: null == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      wind: null == wind
          ? _self.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      visibility: null == visibility
          ? _self.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _self.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      sys: null == sys
          ? _self.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      dtTxt: null == dtTxt
          ? _self.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainWeatherCopyWith<$Res> get main {
    return $MainWeatherCopyWith<$Res>(_self.main, (value) {
      return _then(_self.copyWith(main: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res> get clouds {
    return $CloudsCopyWith<$Res>(_self.clouds, (value) {
      return _then(_self.copyWith(clouds: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_self.wind, (value) {
      return _then(_self.copyWith(wind: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SysCopyWith<$Res> get sys {
    return $SysCopyWith<$Res>(_self.sys, (value) {
      return _then(_self.copyWith(sys: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Forecast extends Forecast {
  const _Forecast(
      {this.dt = 0,
      this.main = const MainWeather(),
      final List<Weather> weather = const <Weather>[],
      this.clouds = const Clouds(),
      this.wind = const Wind(),
      this.visibility = 0,
      this.pop = 0,
      this.sys = const Sys(),
      @JsonKey(name: 'dt_txt') this.dtTxt = ''})
      : _weather = weather,
        super._();
  factory _Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);

  @override
  @JsonKey()
  final int dt;
  @override
  @JsonKey()
  final MainWeather main;
  final List<Weather> _weather;
  @override
  @JsonKey()
  List<Weather> get weather {
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weather);
  }

  @override
  @JsonKey()
  final Clouds clouds;
  @override
  @JsonKey()
  final Wind wind;
  @override
  @JsonKey()
  final int visibility;
  @override
  @JsonKey()
  final double pop;
  @override
  @JsonKey()
  final Sys sys;
  @override
  @JsonKey(name: 'dt_txt')
  final String dtTxt;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ForecastCopyWith<_Forecast> get copyWith =>
      __$ForecastCopyWithImpl<_Forecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ForecastToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Forecast &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      main,
      const DeepCollectionEquality().hash(_weather),
      clouds,
      wind,
      visibility,
      pop,
      sys,
      dtTxt);

  @override
  String toString() {
    return 'Forecast(dt: $dt, main: $main, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, sys: $sys, dtTxt: $dtTxt)';
  }
}

/// @nodoc
abstract mixin class _$ForecastCopyWith<$Res>
    implements $ForecastCopyWith<$Res> {
  factory _$ForecastCopyWith(_Forecast value, $Res Function(_Forecast) _then) =
      __$ForecastCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int dt,
      MainWeather main,
      List<Weather> weather,
      Clouds clouds,
      Wind wind,
      int visibility,
      double pop,
      Sys sys,
      @JsonKey(name: 'dt_txt') String dtTxt});

  @override
  $MainWeatherCopyWith<$Res> get main;
  @override
  $CloudsCopyWith<$Res> get clouds;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class __$ForecastCopyWithImpl<$Res> implements _$ForecastCopyWith<$Res> {
  __$ForecastCopyWithImpl(this._self, this._then);

  final _Forecast _self;
  final $Res Function(_Forecast) _then;

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? dt = null,
    Object? main = null,
    Object? weather = null,
    Object? clouds = null,
    Object? wind = null,
    Object? visibility = null,
    Object? pop = null,
    Object? sys = null,
    Object? dtTxt = null,
  }) {
    return _then(_Forecast(
      dt: null == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeather,
      weather: null == weather
          ? _self._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      clouds: null == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      wind: null == wind
          ? _self.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      visibility: null == visibility
          ? _self.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      pop: null == pop
          ? _self.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as double,
      sys: null == sys
          ? _self.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      dtTxt: null == dtTxt
          ? _self.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainWeatherCopyWith<$Res> get main {
    return $MainWeatherCopyWith<$Res>(_self.main, (value) {
      return _then(_self.copyWith(main: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res> get clouds {
    return $CloudsCopyWith<$Res>(_self.clouds, (value) {
      return _then(_self.copyWith(clouds: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_self.wind, (value) {
      return _then(_self.copyWith(wind: value));
    });
  }

  /// Create a copy of Forecast
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SysCopyWith<$Res> get sys {
    return $SysCopyWith<$Res>(_self.sys, (value) {
      return _then(_self.copyWith(sys: value));
    });
  }
}

/// @nodoc
mixin _$City {
  int get id;
  String get name;
  String get country;
  int get population;
  int get timezone;
  int get sunrise;
  int get sunset;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CityCopyWith<City> get copyWith =>
      _$CityCopyWithImpl<City>(this as City, _$identity);

  /// Serializes this City to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is City &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, country, population, timezone, sunrise, sunset);

  @override
  String toString() {
    return 'City(id: $id, name: $name, country: $country, population: $population, timezone: $timezone, sunrise: $sunrise, sunset: $sunset)';
  }
}

/// @nodoc
abstract mixin class $CityCopyWith<$Res> {
  factory $CityCopyWith(City value, $Res Function(City) _then) =
      _$CityCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String country,
      int population,
      int timezone,
      int sunrise,
      int sunset});
}

/// @nodoc
class _$CityCopyWithImpl<$Res> implements $CityCopyWith<$Res> {
  _$CityCopyWithImpl(this._self, this._then);

  final City _self;
  final $Res Function(City) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? population = null,
    Object? timezone = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _self.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _self.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _self.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _City extends City {
  const _City(
      {this.id = 0,
      this.name = '',
      this.country = '',
      this.population = 0,
      this.timezone = 0,
      this.sunrise = 0,
      this.sunset = 0})
      : super._();
  factory _City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final int population;
  @override
  @JsonKey()
  final int timezone;
  @override
  @JsonKey()
  final int sunrise;
  @override
  @JsonKey()
  final int sunset;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CityCopyWith<_City> get copyWith =>
      __$CityCopyWithImpl<_City>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _City &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, country, population, timezone, sunrise, sunset);

  @override
  String toString() {
    return 'City(id: $id, name: $name, country: $country, population: $population, timezone: $timezone, sunrise: $sunrise, sunset: $sunset)';
  }
}

/// @nodoc
abstract mixin class _$CityCopyWith<$Res> implements $CityCopyWith<$Res> {
  factory _$CityCopyWith(_City value, $Res Function(_City) _then) =
      __$CityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String country,
      int population,
      int timezone,
      int sunrise,
      int sunset});
}

/// @nodoc
class __$CityCopyWithImpl<$Res> implements _$CityCopyWith<$Res> {
  __$CityCopyWithImpl(this._self, this._then);

  final _City _self;
  final $Res Function(_City) _then;

  /// Create a copy of City
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? population = null,
    Object? timezone = null,
    Object? sunrise = null,
    Object? sunset = null,
  }) {
    return _then(_City(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      population: null == population
          ? _self.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      sunrise: null == sunrise
          ? _self.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _self.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
