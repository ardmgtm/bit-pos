// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bloc/cart/cart_bloc.dart' as _i3;
import 'application/bloc/product/product_bloc.dart' as _i8;
import 'application/bloc/product_filter/product_filter_bloc.dart' as _i4;
import 'domain/product/product_repository.dart' as _i6;
import 'infrastructure/product/local_data/product_local_data_source.dart'
    as _i5;
import 'infrastructure/product/product_repository_impl.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.CartBloc>(() => _i3.CartBloc());
  gh.factory<_i4.ProductFilterBloc>(() => _i4.ProductFilterBloc());
  gh.lazySingleton<_i5.ProductLocalDataSource>(
      () => _i5.ProductLocalDataSource());
  gh.lazySingleton<_i6.ProductRepository>(
      () => _i7.ProductRepositoryImpl(get<_i5.ProductLocalDataSource>()));
  gh.factory<_i8.ProductBloc>(
      () => _i8.ProductBloc(get<_i6.ProductRepository>()));
  return get;
}
