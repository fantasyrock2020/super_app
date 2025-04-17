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
import 'package:super_app/features/weather/data/repository.dart' as _i825;
import 'package:super_app/features/weather/domain/repository.dart' as _i154;
import 'package:super_app/features/weather/presentation/bloc/home/home_bloc.dart'
    as _i766;

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
    gh.factory<_i766.HomeBloc>(() => _i766.HomeBloc());
    gh.lazySingleton<_i154.WeatherRepository>(
        () => _i825.WeatherRepositoryImpl());
    return this;
  }
}
