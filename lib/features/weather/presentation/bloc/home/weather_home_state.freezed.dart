// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherHomeState {
  WeatherResponse? get currentWeather;
  List<Forecast> get forecasts;
  bool get loading;
  double? get lat;
  double? get long;

  /// Create a copy of WeatherHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeatherHomeStateCopyWith<WeatherHomeState> get copyWith =>
      _$WeatherHomeStateCopyWithImpl<WeatherHomeState>(
          this as WeatherHomeState, _$identity);

  /// Serializes this WeatherHomeState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WeatherHomeState &&
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
    return 'WeatherHomeState(currentWeather: $currentWeather, forecasts: $forecasts, loading: $loading, lat: $lat, long: $long)';
  }
}

/// @nodoc
abstract mixin class $WeatherHomeStateCopyWith<$Res> {
  factory $WeatherHomeStateCopyWith(
          WeatherHomeState value, $Res Function(WeatherHomeState) _then) =
      _$WeatherHomeStateCopyWithImpl;
  @useResult
  $Res call(
      {WeatherResponse? currentWeather,
      List<Forecast> forecasts,
      bool loading,
      double? lat,
      double? long});

  $WeatherResponseCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class _$WeatherHomeStateCopyWithImpl<$Res>
    implements $WeatherHomeStateCopyWith<$Res> {
  _$WeatherHomeStateCopyWithImpl(this._self, this._then);

  final WeatherHomeState _self;
  final $Res Function(WeatherHomeState) _then;

  /// Create a copy of WeatherHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentWeather = freezed,
    Object? forecasts = null,
    Object? loading = null,
    Object? lat = freezed,
    Object? long = freezed,
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
      lat: freezed == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: freezed == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of WeatherHomeState
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
class _WeatherHomeState extends WeatherHomeState {
  const _WeatherHomeState(
      {this.currentWeather,
      final List<Forecast> forecasts = const <Forecast>[],
      this.loading = true,
      this.lat,
      this.long})
      : _forecasts = forecasts,
        super._();
  factory _WeatherHomeState.fromJson(Map<String, dynamic> json) =>
      _$WeatherHomeStateFromJson(json);

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
  final double? lat;
  @override
  final double? long;

  /// Create a copy of WeatherHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeatherHomeStateCopyWith<_WeatherHomeState> get copyWith =>
      __$WeatherHomeStateCopyWithImpl<_WeatherHomeState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeatherHomeStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeatherHomeState &&
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
    return 'WeatherHomeState(currentWeather: $currentWeather, forecasts: $forecasts, loading: $loading, lat: $lat, long: $long)';
  }
}

/// @nodoc
abstract mixin class _$WeatherHomeStateCopyWith<$Res>
    implements $WeatherHomeStateCopyWith<$Res> {
  factory _$WeatherHomeStateCopyWith(
          _WeatherHomeState value, $Res Function(_WeatherHomeState) _then) =
      __$WeatherHomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WeatherResponse? currentWeather,
      List<Forecast> forecasts,
      bool loading,
      double? lat,
      double? long});

  @override
  $WeatherResponseCopyWith<$Res>? get currentWeather;
}

/// @nodoc
class __$WeatherHomeStateCopyWithImpl<$Res>
    implements _$WeatherHomeStateCopyWith<$Res> {
  __$WeatherHomeStateCopyWithImpl(this._self, this._then);

  final _WeatherHomeState _self;
  final $Res Function(_WeatherHomeState) _then;

  /// Create a copy of WeatherHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? currentWeather = freezed,
    Object? forecasts = null,
    Object? loading = null,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_WeatherHomeState(
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
      lat: freezed == lat
          ? _self.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      long: freezed == long
          ? _self.long
          : long // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  /// Create a copy of WeatherHomeState
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
