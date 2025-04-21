// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:super_app/core/network/dio_client.dart' as _i631;
import 'package:super_app/features/weather/data/remote/remote_data_source.dart'
    as _i292;
import 'package:super_app/features/weather/data/remote/remote_data_source_impl.dart'
    as _i152;
import 'package:super_app/features/weather/data/repository/repository.dart'
    as _i383;
import 'package:super_app/features/weather/domain/repository/repository.dart'
    as _i299;
import 'package:super_app/features/weather/presentation/bloc/home/weather_home_bloc.dart'
    as _i942;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i631.DioClient>(() => _i631.DioClient());
    gh.lazySingleton<_i292.WeatherRemoteDataSource>(
        () => _i152.WeatherRemoteDataSourceImpl(gh<_i631.DioClient>()));
    gh.lazySingleton<_i299.WeatherRepository>(
        () => _i383.WeatherRepositoryImpl(gh<_i292.WeatherRemoteDataSource>()));
    gh.factory<_i942.WeatherHomeBloc>(
        () => _i942.WeatherHomeBloc(gh<_i299.WeatherRepository>()));
    return this;
  }
}
