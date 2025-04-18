// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
HomeState _$HomeStateFromJson(Map<String, dynamic> json) {
  return _ForecastResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeState {
  WeatherResponse? get currentWeather;
  List<Forecast> get forecasts;
  bool get loading;
  double get lat;
  double get long;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            const DeepCollectionEquality().equals(other.forecasts, forecasts) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentWeather,
      const DeepCollectionEquality().hash(forecasts), loading, lat, long);

  @override
  String toString() {
    return 'HomeState(currentWeather: $currentWeather, forecasts: $forecasts, loading: $loading, lat: $lat, long: $long)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {WeatherResponse? currentWeather,
      List<Forecast> forecasts,
      bool loading,
      double lat,
      double long});

  $WeatherResponseCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = freezed,
    Object? forecasts = null,
    Object? loading = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_self.copyWith(
      currentWeather: freezed == currentWeather
          ? _self.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      forecasts: null == forecasts
          ? _self.forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as List<Forecast>,
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherResponseCopyWith<$Res>? get currentWeather {
    if (_self.currentWeather == null) {
      return null;
    }

    return $WeatherResponseCopyWith<$Res>(_self.currentWeather!, (value) {
      return _then(_self.copyWith(currentWeather: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ForecastResponse extends HomeState {
  const _ForecastResponse(
      {this.currentWeather,
      final List<Forecast> forecasts = const <Forecast>[],
      this.loading = true,
      this.lat = 0,
      this.long = 0})
      : _forecasts = forecasts,
        super._();
  factory _ForecastResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastResponseFromJson(json);

  @override
  final WeatherResponse? currentWeather;
  final List<Forecast> _forecasts;
  @override
  @JsonKey()
  List<Forecast> get forecasts {
    if (_forecasts is EqualUnmodifiableListView) return _forecasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecasts);
  }

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final double lat;
  @override
  @JsonKey()
  final double long;

  /// Create a copy of HomeState
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
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            const DeepCollectionEquality()
                .equals(other._forecasts, _forecasts) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.long, long) || other.long == long));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, currentWeather,
      const DeepCollectionEquality().hash(_forecasts), loading, lat, long);

  @override
  String toString() {
    return 'HomeState(currentWeather: $currentWeather, forecasts: $forecasts, loading: $loading, lat: $lat, long: $long)';
  }
}

/// @nodoc
abstract mixin class _$ForecastResponseCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$ForecastResponseCopyWith(
          _ForecastResponse value, $Res Function(_ForecastResponse) _then) =
      __$ForecastResponseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherResponse? currentWeather,
      List<Forecast> forecasts,
      bool loading,
      double lat,
      double long});

  @override
  $WeatherResponseCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class __$ForecastResponseCopyWithImpl<$Res>
    implements _$ForecastResponseCopyWith<$Res> {
  __$ForecastResponseCopyWithImpl(this._self, this._then);

  final _ForecastResponse _self;
  final $Res Function(_ForecastResponse) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentWeather = freezed,
    Object? forecasts = null,
    Object? loading = null,
    Object? lat = null,
    Object? long = null,
  }) {
    return _then(_ForecastResponse(
      currentWeather: freezed == currentWeather
          ? _self.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as WeatherResponse?,
      forecasts: null == forecasts
          ? _self._forecasts
          : forecasts // ignore: cast_nullable_to_non_nullable
              as List<Forecast>,
      loading: null == loading
          ? _self.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      lat: null == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: null == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherResponseCopyWith<$Res>? get currentWeather {
    if (_self.currentWeather == null) {
      return null;
    }

    return $WeatherResponseCopyWith<$Res>(_self.currentWeather!, (value) {
      return _then(_self.copyWith(currentWeather: value));
    });
  }
}

// dart format on
