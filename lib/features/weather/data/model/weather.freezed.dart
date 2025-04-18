// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherResponse {
  List<Weather> get weather;
  String get base;
  MainWeather get main;
  int get visibility;
  Wind get wind;
  Clouds get clouds;
  int get dt;
  Sys get sys;
  int get timezone;
  int get id;
  String get name;
  int get cod;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherResponseCopyWith<WeatherResponse> get copyWith =>
      _$WeatherResponseCopyWithImpl<WeatherResponse>(
          this as WeatherResponse, _$identity);

  /// Serializes this WeatherResponse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherResponse &&
            const DeepCollectionEquality().equals(other.weather, weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cod, cod) || other.cod == cod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weather),
      base,
      main,
      visibility,
      wind,
      clouds,
      dt,
      sys,
      timezone,
      id,
      name,
      cod);

  @override
  String toString() {
    return 'WeatherResponse(weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }
}

/// @nodoc
abstract mixin class $WeatherResponseCopyWith<$Res> {
  factory $WeatherResponseCopyWith(
          WeatherResponse value, $Res Function(WeatherResponse) _then) =
      _$WeatherResponseCopyWithImpl;
  @useResult
  $Res call(
      {List<Weather> weather,
      String base,
      MainWeather main,
      int visibility,
      Wind wind,
      Clouds clouds,
      int dt,
      Sys sys,
      int timezone,
      int id,
      String name,
      int cod});

  $MainWeatherCopyWith<$Res> get main;
  $WindCopyWith<$Res> get wind;
  $CloudsCopyWith<$Res> get clouds;
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class _$WeatherResponseCopyWithImpl<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  _$WeatherResponseCopyWithImpl(this._self, this._then);

  final WeatherResponse _self;
  final $Res Function(WeatherResponse) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_self.copyWith(
      weather: null == weather
          ? _self.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      base: null == base
          ? _self.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeather,
      visibility: null == visibility
          ? _self.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _self.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      clouds: null == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      dt: null == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _self.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _self.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainWeatherCopyWith<$Res> get main {
    return $MainWeatherCopyWith<$Res>(_self.main, (value) {
      return _then(_self.copyWith(main: value));
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_self.wind, (value) {
      return _then(_self.copyWith(wind: value));
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res> get clouds {
    return $CloudsCopyWith<$Res>(_self.clouds, (value) {
      return _then(_self.copyWith(clouds: value));
    });
  }

  /// Create a copy of WeatherResponse
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
class _WeatherResponse extends WeatherResponse {
  const _WeatherResponse(
      {final List<Weather> weather = const <Weather>[],
      this.base = '',
      this.main = const MainWeather(),
      this.visibility = 0,
      this.wind = const Wind(),
      this.clouds = const Clouds(),
      this.dt = 0,
      this.sys = const Sys(),
      this.timezone = 0,
      this.id = 0,
      this.name = '',
      this.cod = 0})
      : _weather = weather,
        super._();
  factory _WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

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
  final String base;
  @override
  @JsonKey()
  final MainWeather main;
  @override
  @JsonKey()
  final int visibility;
  @override
  @JsonKey()
  final Wind wind;
  @override
  @JsonKey()
  final Clouds clouds;
  @override
  @JsonKey()
  final int dt;
  @override
  @JsonKey()
  final Sys sys;
  @override
  @JsonKey()
  final int timezone;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int cod;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherResponseCopyWith<_WeatherResponse> get copyWith =>
      __$WeatherResponseCopyWithImpl<_WeatherResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherResponseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherResponse &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cod, cod) || other.cod == cod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_weather),
      base,
      main,
      visibility,
      wind,
      clouds,
      dt,
      sys,
      timezone,
      id,
      name,
      cod);

  @override
  String toString() {
    return 'WeatherResponse(weather: $weather, base: $base, main: $main, visibility: $visibility, wind: $wind, clouds: $clouds, dt: $dt, sys: $sys, timezone: $timezone, id: $id, name: $name, cod: $cod)';
  }
}

/// @nodoc
abstract mixin class _$WeatherResponseCopyWith<$Res>
    implements $WeatherResponseCopyWith<$Res> {
  factory _$WeatherResponseCopyWith(
          _WeatherResponse value, $Res Function(_WeatherResponse) _then) =
      __$WeatherResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Weather> weather,
      String base,
      MainWeather main,
      int visibility,
      Wind wind,
      Clouds clouds,
      int dt,
      Sys sys,
      int timezone,
      int id,
      String name,
      int cod});

  @override
  $MainWeatherCopyWith<$Res> get main;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $CloudsCopyWith<$Res> get clouds;
  @override
  $SysCopyWith<$Res> get sys;
}

/// @nodoc
class __$WeatherResponseCopyWithImpl<$Res>
    implements _$WeatherResponseCopyWith<$Res> {
  __$WeatherResponseCopyWithImpl(this._self, this._then);

  final _WeatherResponse _self;
  final $Res Function(_WeatherResponse) _then;

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? weather = null,
    Object? base = null,
    Object? main = null,
    Object? visibility = null,
    Object? wind = null,
    Object? clouds = null,
    Object? dt = null,
    Object? sys = null,
    Object? timezone = null,
    Object? id = null,
    Object? name = null,
    Object? cod = null,
  }) {
    return _then(_WeatherResponse(
      weather: null == weather
          ? _self._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      base: null == base
          ? _self.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      main: null == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as MainWeather,
      visibility: null == visibility
          ? _self.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int,
      wind: null == wind
          ? _self.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      clouds: null == clouds
          ? _self.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as Clouds,
      dt: null == dt
          ? _self.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int,
      sys: null == sys
          ? _self.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as Sys,
      timezone: null == timezone
          ? _self.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cod: null == cod
          ? _self.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainWeatherCopyWith<$Res> get main {
    return $MainWeatherCopyWith<$Res>(_self.main, (value) {
      return _then(_self.copyWith(main: value));
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_self.wind, (value) {
      return _then(_self.copyWith(wind: value));
    });
  }

  /// Create a copy of WeatherResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<$Res> get clouds {
    return $CloudsCopyWith<$Res>(_self.clouds, (value) {
      return _then(_self.copyWith(clouds: value));
    });
  }

  /// Create a copy of WeatherResponse
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
mixin _$Weather {
  int get id;
  String get main;
  String get description;
  String get icon;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<Weather> get copyWith =>
      _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Weather &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @override
  String toString() {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) =
      _$WeatherCopyWithImpl;
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._self, this._then);

  final Weather _self;
  final $Res Function(Weather) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Weather extends Weather {
  const _Weather(
      {this.id = 0, this.main = '', this.description = '', this.icon = ''})
      : super._();
  factory _Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String main;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String icon;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Weather &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  @override
  String toString() {
    return 'Weather(id: $id, main: $main, description: $description, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) =
      __$WeatherCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String main, String description, String icon});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(this._self, this._then);

  final _Weather _self;
  final $Res Function(_Weather) _then;

  /// Create a copy of Weather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? main = null,
    Object? description = null,
    Object? icon = null,
  }) {
    return _then(_Weather(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      main: null == main
          ? _self.main
          : main // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MainWeather {
  double get temp;
  @JsonKey(name: 'feels_like')
  double get feelsLike;
  @JsonKey(name: 'temp_min')
  double get tempMin;
  @JsonKey(name: 'temp_max')
  double get tempMax;
  int get pressure;
  @JsonKey(name: 'sea_level')
  int get seaLevel;
  @JsonKey(name: 'grnd_level')
  int get grndLevel;
  int get humidity;
  @JsonKey(name: 'temp_kf')
  double get tempKf;

  /// Create a copy of MainWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainWeatherCopyWith<MainWeather> get copyWith =>
      _$MainWeatherCopyWithImpl<MainWeather>(this as MainWeather, _$identity);

  /// Serializes this MainWeather to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainWeather &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.seaLevel, seaLevel) ||
                other.seaLevel == seaLevel) &&
            (identical(other.grndLevel, grndLevel) ||
                other.grndLevel == grndLevel) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.tempKf, tempKf) || other.tempKf == tempKf));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, tempMin,
      tempMax, pressure, seaLevel, grndLevel, humidity, tempKf);

  @override
  String toString() {
    return 'MainWeather(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, seaLevel: $seaLevel, grndLevel: $grndLevel, humidity: $humidity, tempKf: $tempKf)';
  }
}

/// @nodoc
abstract mixin class $MainWeatherCopyWith<$Res> {
  factory $MainWeatherCopyWith(
          MainWeather value, $Res Function(MainWeather) _then) =
      _$MainWeatherCopyWithImpl;
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax,
      int pressure,
      @JsonKey(name: 'sea_level') int seaLevel,
      @JsonKey(name: 'grnd_level') int grndLevel,
      int humidity,
      @JsonKey(name: 'temp_kf') double tempKf});
}

/// @nodoc
class _$MainWeatherCopyWithImpl<$Res> implements $MainWeatherCopyWith<$Res> {
  _$MainWeatherCopyWithImpl(this._self, this._then);

  final MainWeather _self;
  final $Res Function(MainWeather) _then;

  /// Create a copy of MainWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? seaLevel = null,
    Object? grndLevel = null,
    Object? humidity = null,
    Object? tempKf = null,
  }) {
    return _then(_self.copyWith(
      temp: null == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _self.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _self.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      seaLevel: null == seaLevel
          ? _self.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int,
      grndLevel: null == grndLevel
          ? _self.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      tempKf: null == tempKf
          ? _self.tempKf
          : tempKf // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MainWeather extends MainWeather {
  const _MainWeather(
      {this.temp = 0,
      @JsonKey(name: 'feels_like') this.feelsLike = 0,
      @JsonKey(name: 'temp_min') this.tempMin = 0,
      @JsonKey(name: 'temp_max') this.tempMax = 0,
      this.pressure = 0,
      @JsonKey(name: 'sea_level') this.seaLevel = 0,
      @JsonKey(name: 'grnd_level') this.grndLevel = 0,
      this.humidity = 0,
      @JsonKey(name: 'temp_kf') this.tempKf = 0})
      : super._();
  factory _MainWeather.fromJson(Map<String, dynamic> json) =>
      _$MainWeatherFromJson(json);

  @override
  @JsonKey()
  final double temp;
  @override
  @JsonKey(name: 'feels_like')
  final double feelsLike;
  @override
  @JsonKey(name: 'temp_min')
  final double tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double tempMax;
  @override
  @JsonKey()
  final int pressure;
  @override
  @JsonKey(name: 'sea_level')
  final int seaLevel;
  @override
  @JsonKey(name: 'grnd_level')
  final int grndLevel;
  @override
  @JsonKey()
  final int humidity;
  @override
  @JsonKey(name: 'temp_kf')
  final double tempKf;

  /// Create a copy of MainWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MainWeatherCopyWith<_MainWeather> get copyWith =>
      __$MainWeatherCopyWithImpl<_MainWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MainWeatherToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainWeather &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.seaLevel, seaLevel) ||
                other.seaLevel == seaLevel) &&
            (identical(other.grndLevel, grndLevel) ||
                other.grndLevel == grndLevel) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.tempKf, tempKf) || other.tempKf == tempKf));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, tempMin,
      tempMax, pressure, seaLevel, grndLevel, humidity, tempKf);

  @override
  String toString() {
    return 'MainWeather(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, seaLevel: $seaLevel, grndLevel: $grndLevel, humidity: $humidity, tempKf: $tempKf)';
  }
}

/// @nodoc
abstract mixin class _$MainWeatherCopyWith<$Res>
    implements $MainWeatherCopyWith<$Res> {
  factory _$MainWeatherCopyWith(
          _MainWeather value, $Res Function(_MainWeather) _then) =
      __$MainWeatherCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double temp,
      @JsonKey(name: 'feels_like') double feelsLike,
      @JsonKey(name: 'temp_min') double tempMin,
      @JsonKey(name: 'temp_max') double tempMax,
      int pressure,
      @JsonKey(name: 'sea_level') int seaLevel,
      @JsonKey(name: 'grnd_level') int grndLevel,
      int humidity,
      @JsonKey(name: 'temp_kf') double tempKf});
}

/// @nodoc
class __$MainWeatherCopyWithImpl<$Res> implements _$MainWeatherCopyWith<$Res> {
  __$MainWeatherCopyWithImpl(this._self, this._then);

  final _MainWeather _self;
  final $Res Function(_MainWeather) _then;

  /// Create a copy of MainWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? temp = null,
    Object? feelsLike = null,
    Object? tempMin = null,
    Object? tempMax = null,
    Object? pressure = null,
    Object? seaLevel = null,
    Object? grndLevel = null,
    Object? humidity = null,
    Object? tempKf = null,
  }) {
    return _then(_MainWeather(
      temp: null == temp
          ? _self.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feelsLike: null == feelsLike
          ? _self.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double,
      tempMin: null == tempMin
          ? _self.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double,
      tempMax: null == tempMax
          ? _self.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: null == pressure
          ? _self.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      seaLevel: null == seaLevel
          ? _self.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int,
      grndLevel: null == grndLevel
          ? _self.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: null == humidity
          ? _self.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
      tempKf: null == tempKf
          ? _self.tempKf
          : tempKf // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$Wind {
  double get speed;
  int get deg;
  double get gust;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WindCopyWith<Wind> get copyWith =>
      _$WindCopyWithImpl<Wind>(this as Wind, _$identity);

  /// Serializes this Wind to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Wind &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            (identical(other.gust, gust) || other.gust == gust));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg, gust);

  @override
  String toString() {
    return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
  }
}

/// @nodoc
abstract mixin class $WindCopyWith<$Res> {
  factory $WindCopyWith(Wind value, $Res Function(Wind) _then) =
      _$WindCopyWithImpl;
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class _$WindCopyWithImpl<$Res> implements $WindCopyWith<$Res> {
  _$WindCopyWithImpl(this._self, this._then);

  final Wind _self;
  final $Res Function(Wind) _then;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = null,
  }) {
    return _then(_self.copyWith(
      speed: null == speed
          ? _self.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _self.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: null == gust
          ? _self.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Wind extends Wind {
  const _Wind({this.speed = 0, this.deg = 0, this.gust = 0}) : super._();
  factory _Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

  @override
  @JsonKey()
  final double speed;
  @override
  @JsonKey()
  final int deg;
  @override
  @JsonKey()
  final double gust;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WindCopyWith<_Wind> get copyWith =>
      __$WindCopyWithImpl<_Wind>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WindToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Wind &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            (identical(other.gust, gust) || other.gust == gust));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg, gust);

  @override
  String toString() {
    return 'Wind(speed: $speed, deg: $deg, gust: $gust)';
  }
}

/// @nodoc
abstract mixin class _$WindCopyWith<$Res> implements $WindCopyWith<$Res> {
  factory _$WindCopyWith(_Wind value, $Res Function(_Wind) _then) =
      __$WindCopyWithImpl;
  @override
  @useResult
  $Res call({double speed, int deg, double gust});
}

/// @nodoc
class __$WindCopyWithImpl<$Res> implements _$WindCopyWith<$Res> {
  __$WindCopyWithImpl(this._self, this._then);

  final _Wind _self;
  final $Res Function(_Wind) _then;

  /// Create a copy of Wind
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? speed = null,
    Object? deg = null,
    Object? gust = null,
  }) {
    return _then(_Wind(
      speed: null == speed
          ? _self.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      deg: null == deg
          ? _self.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int,
      gust: null == gust
          ? _self.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$Clouds {
  int get all;

  /// Create a copy of Clouds
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CloudsCopyWith<Clouds> get copyWith =>
      _$CloudsCopyWithImpl<Clouds>(this as Clouds, _$identity);

  /// Serializes this Clouds to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Clouds &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  @override
  String toString() {
    return 'Clouds(all: $all)';
  }
}

/// @nodoc
abstract mixin class $CloudsCopyWith<$Res> {
  factory $CloudsCopyWith(Clouds value, $Res Function(Clouds) _then) =
      _$CloudsCopyWithImpl;
  @useResult
  $Res call({int all});
}

/// @nodoc
class _$CloudsCopyWithImpl<$Res> implements $CloudsCopyWith<$Res> {
  _$CloudsCopyWithImpl(this._self, this._then);

  final Clouds _self;
  final $Res Function(Clouds) _then;

  /// Create a copy of Clouds
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_self.copyWith(
      all: null == all
          ? _self.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Clouds extends Clouds {
  const _Clouds({this.all = 0}) : super._();
  factory _Clouds.fromJson(Map<String, dynamic> json) => _$CloudsFromJson(json);

  @override
  @JsonKey()
  final int all;

  /// Create a copy of Clouds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CloudsCopyWith<_Clouds> get copyWith =>
      __$CloudsCopyWithImpl<_Clouds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CloudsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Clouds &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  @override
  String toString() {
    return 'Clouds(all: $all)';
  }
}

/// @nodoc
abstract mixin class _$CloudsCopyWith<$Res> implements $CloudsCopyWith<$Res> {
  factory _$CloudsCopyWith(_Clouds value, $Res Function(_Clouds) _then) =
      __$CloudsCopyWithImpl;
  @override
  @useResult
  $Res call({int all});
}

/// @nodoc
class __$CloudsCopyWithImpl<$Res> implements _$CloudsCopyWith<$Res> {
  __$CloudsCopyWithImpl(this._self, this._then);

  final _Clouds _self;
  final $Res Function(_Clouds) _then;

  /// Create a copy of Clouds
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? all = null,
  }) {
    return _then(_Clouds(
      all: null == all
          ? _self.all
          : all // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$Sys {
  int get type;
  int get id;
  String get country;
  int get sunrise;
  int get sunset;
  String get pod;

  /// Create a copy of Sys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SysCopyWith<Sys> get copyWith =>
      _$SysCopyWithImpl<Sys>(this as Sys, _$identity);

  /// Serializes this Sys to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Sys &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.pod, pod) || other.pod == pod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, id, country, sunrise, sunset, pod);

  @override
  String toString() {
    return 'Sys(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset, pod: $pod)';
  }
}

/// @nodoc
abstract mixin class $SysCopyWith<$Res> {
  factory $SysCopyWith(Sys value, $Res Function(Sys) _then) = _$SysCopyWithImpl;
  @useResult
  $Res call(
      {int type, int id, String country, int sunrise, int sunset, String pod});
}

/// @nodoc
class _$SysCopyWithImpl<$Res> implements $SysCopyWith<$Res> {
  _$SysCopyWithImpl(this._self, this._then);

  final Sys _self;
  final $Res Function(Sys) _then;

  /// Create a copy of Sys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? pod = null,
  }) {
    return _then(_self.copyWith(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _self.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _self.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      pod: null == pod
          ? _self.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Sys extends Sys {
  const _Sys(
      {this.type = 0,
      this.id = 0,
      this.country = '',
      this.sunrise = 0,
      this.sunset = 0,
      this.pod = ''})
      : super._();
  factory _Sys.fromJson(Map<String, dynamic> json) => _$SysFromJson(json);

  @override
  @JsonKey()
  final int type;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String country;
  @override
  @JsonKey()
  final int sunrise;
  @override
  @JsonKey()
  final int sunset;
  @override
  @JsonKey()
  final String pod;

  /// Create a copy of Sys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SysCopyWith<_Sys> get copyWith =>
      __$SysCopyWithImpl<_Sys>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SysToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sys &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.pod, pod) || other.pod == pod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, id, country, sunrise, sunset, pod);

  @override
  String toString() {
    return 'Sys(type: $type, id: $id, country: $country, sunrise: $sunrise, sunset: $sunset, pod: $pod)';
  }
}

/// @nodoc
abstract mixin class _$SysCopyWith<$Res> implements $SysCopyWith<$Res> {
  factory _$SysCopyWith(_Sys value, $Res Function(_Sys) _then) =
      __$SysCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int type, int id, String country, int sunrise, int sunset, String pod});
}

/// @nodoc
class __$SysCopyWithImpl<$Res> implements _$SysCopyWith<$Res> {
  __$SysCopyWithImpl(this._self, this._then);

  final _Sys _self;
  final $Res Function(_Sys) _then;

  /// Create a copy of Sys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? country = null,
    Object? sunrise = null,
    Object? sunset = null,
    Object? pod = null,
  }) {
    return _then(_Sys(
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      country: null == country
          ? _self.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      sunrise: null == sunrise
          ? _self.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int,
      sunset: null == sunset
          ? _self.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int,
      pod: null == pod
          ? _self.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
