// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bloc/product_bloc.dart' as _i6;
import 'domain/product/product_repository.dart' as _i4;
import 'infrastructure/product/local_data/product_local_data_source.dart'
    as _i3;
import 'infrastructure/product/product_repository_impl.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ProductLocalDataSource>(
      () => _i3.ProductLocalDataSource());
  gh.lazySingleton<_i4.ProductRepository>(
      () => _i5.ProductRepositoryImpl(get<_i3.ProductLocalDataSource>()));
  gh.factory<_i6.ProductBloc>(
      () => _i6.ProductBloc(get<_i4.ProductRepository>()));
  return get;
}
