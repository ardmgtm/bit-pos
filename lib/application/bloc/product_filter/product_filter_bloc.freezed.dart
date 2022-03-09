// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductFilterEventTearOff {
  const _$ProductFilterEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Filter filter({List<Product>? products, String? search, String? category}) {
    return _Filter(
      products: products,
      search: search,
      category: category,
    );
  }
}

/// @nodoc
const $ProductFilterEvent = _$ProductFilterEventTearOff();

/// @nodoc
mixin _$ProductFilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            List<Product>? products, String? search, String? category)
        filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product>? products, String? search, String? category)?
        filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product>? products, String? search, String? category)?
        filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Filter value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Filter value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFilterEventCopyWith<$Res> {
  factory $ProductFilterEventCopyWith(
          ProductFilterEvent value, $Res Function(ProductFilterEvent) then) =
      _$ProductFilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductFilterEventCopyWithImpl<$Res>
    implements $ProductFilterEventCopyWith<$Res> {
  _$ProductFilterEventCopyWithImpl(this._value, this._then);

  final ProductFilterEvent _value;
  // ignore: unused_field
  final $Res Function(ProductFilterEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ProductFilterEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ProductFilterEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            List<Product>? products, String? search, String? category)
        filter,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product>? products, String? search, String? category)?
        filter,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product>? products, String? search, String? category)?
        filter,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Filter value) filter,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Filter value)? filter,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductFilterEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$FilterCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) then) =
      __$FilterCopyWithImpl<$Res>;
  $Res call({List<Product>? products, String? search, String? category});
}

/// @nodoc
class __$FilterCopyWithImpl<$Res> extends _$ProductFilterEventCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(_Filter _value, $Res Function(_Filter) _then)
      : super(_value, (v) => _then(v as _Filter));

  @override
  _Filter get _value => super._value as _Filter;

  @override
  $Res call({
    Object? products = freezed,
    Object? search = freezed,
    Object? category = freezed,
  }) {
    return _then(_Filter(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      search: search == freezed
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Filter implements _Filter {
  const _$_Filter({this.products, this.search, this.category});

  @override
  final List<Product>? products;
  @override
  final String? search;
  @override
  final String? category;

  @override
  String toString() {
    return 'ProductFilterEvent.filter(products: $products, search: $search, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Filter &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality().equals(other.search, search) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(search),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$FilterCopyWith<_Filter> get copyWith =>
      __$FilterCopyWithImpl<_Filter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            List<Product>? products, String? search, String? category)
        filter,
  }) {
    return filter(products, search, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product>? products, String? search, String? category)?
        filter,
  }) {
    return filter?.call(products, search, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(List<Product>? products, String? search, String? category)?
        filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(products, search, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Filter value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Filter value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Filter value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _Filter implements ProductFilterEvent {
  const factory _Filter(
      {List<Product>? products, String? search, String? category}) = _$_Filter;

  List<Product>? get products;
  String? get search;
  String? get category;
  @JsonKey(ignore: true)
  _$FilterCopyWith<_Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductFilterStateTearOff {
  const _$ProductFilterStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Filtering filtering() {
    return const _Filtering();
  }

  _Filtered filtered(ProductFilter productFilter) {
    return _Filtered(
      productFilter,
    );
  }
}

/// @nodoc
const $ProductFilterState = _$ProductFilterStateTearOff();

/// @nodoc
mixin _$ProductFilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filtering,
    required TResult Function(ProductFilter productFilter) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function(ProductFilter productFilter)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function(ProductFilter productFilter)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtering value) filtering,
    required TResult Function(_Filtered value) filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Filtered value)? filtered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Filtered value)? filtered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFilterStateCopyWith<$Res> {
  factory $ProductFilterStateCopyWith(
          ProductFilterState value, $Res Function(ProductFilterState) then) =
      _$ProductFilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductFilterStateCopyWithImpl<$Res>
    implements $ProductFilterStateCopyWith<$Res> {
  _$ProductFilterStateCopyWithImpl(this._value, this._then);

  final ProductFilterState _value;
  // ignore: unused_field
  final $Res Function(ProductFilterState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ProductFilterStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProductFilterState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filtering,
    required TResult Function(ProductFilter productFilter) filtered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function(ProductFilter productFilter)? filtered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function(ProductFilter productFilter)? filtered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtering value) filtering,
    required TResult Function(_Filtered value) filtered,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Filtered value)? filtered,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Filtered value)? filtered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductFilterState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$FilteringCopyWith<$Res> {
  factory _$FilteringCopyWith(
          _Filtering value, $Res Function(_Filtering) then) =
      __$FilteringCopyWithImpl<$Res>;
}

/// @nodoc
class __$FilteringCopyWithImpl<$Res>
    extends _$ProductFilterStateCopyWithImpl<$Res>
    implements _$FilteringCopyWith<$Res> {
  __$FilteringCopyWithImpl(_Filtering _value, $Res Function(_Filtering) _then)
      : super(_value, (v) => _then(v as _Filtering));

  @override
  _Filtering get _value => super._value as _Filtering;
}

/// @nodoc

class _$_Filtering implements _Filtering {
  const _$_Filtering();

  @override
  String toString() {
    return 'ProductFilterState.filtering()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Filtering);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filtering,
    required TResult Function(ProductFilter productFilter) filtered,
  }) {
    return filtering();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function(ProductFilter productFilter)? filtered,
  }) {
    return filtering?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function(ProductFilter productFilter)? filtered,
    required TResult orElse(),
  }) {
    if (filtering != null) {
      return filtering();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtering value) filtering,
    required TResult Function(_Filtered value) filtered,
  }) {
    return filtering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Filtered value)? filtered,
  }) {
    return filtering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Filtered value)? filtered,
    required TResult orElse(),
  }) {
    if (filtering != null) {
      return filtering(this);
    }
    return orElse();
  }
}

abstract class _Filtering implements ProductFilterState {
  const factory _Filtering() = _$_Filtering;
}

/// @nodoc
abstract class _$FilteredCopyWith<$Res> {
  factory _$FilteredCopyWith(_Filtered value, $Res Function(_Filtered) then) =
      __$FilteredCopyWithImpl<$Res>;
  $Res call({ProductFilter productFilter});

  $ProductFilterCopyWith<$Res> get productFilter;
}

/// @nodoc
class __$FilteredCopyWithImpl<$Res>
    extends _$ProductFilterStateCopyWithImpl<$Res>
    implements _$FilteredCopyWith<$Res> {
  __$FilteredCopyWithImpl(_Filtered _value, $Res Function(_Filtered) _then)
      : super(_value, (v) => _then(v as _Filtered));

  @override
  _Filtered get _value => super._value as _Filtered;

  @override
  $Res call({
    Object? productFilter = freezed,
  }) {
    return _then(_Filtered(
      productFilter == freezed
          ? _value.productFilter
          : productFilter // ignore: cast_nullable_to_non_nullable
              as ProductFilter,
    ));
  }

  @override
  $ProductFilterCopyWith<$Res> get productFilter {
    return $ProductFilterCopyWith<$Res>(_value.productFilter, (value) {
      return _then(_value.copyWith(productFilter: value));
    });
  }
}

/// @nodoc

class _$_Filtered implements _Filtered {
  const _$_Filtered(this.productFilter);

  @override
  final ProductFilter productFilter;

  @override
  String toString() {
    return 'ProductFilterState.filtered(productFilter: $productFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Filtered &&
            const DeepCollectionEquality()
                .equals(other.productFilter, productFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(productFilter));

  @JsonKey(ignore: true)
  @override
  _$FilteredCopyWith<_Filtered> get copyWith =>
      __$FilteredCopyWithImpl<_Filtered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() filtering,
    required TResult Function(ProductFilter productFilter) filtered,
  }) {
    return filtered(productFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function(ProductFilter productFilter)? filtered,
  }) {
    return filtered?.call(productFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? filtering,
    TResult Function(ProductFilter productFilter)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(productFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Filtering value) filtering,
    required TResult Function(_Filtered value) filtered,
  }) {
    return filtered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Filtered value)? filtered,
  }) {
    return filtered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Filtering value)? filtering,
    TResult Function(_Filtered value)? filtered,
    required TResult orElse(),
  }) {
    if (filtered != null) {
      return filtered(this);
    }
    return orElse();
  }
}

abstract class _Filtered implements ProductFilterState {
  const factory _Filtered(ProductFilter productFilter) = _$_Filtered;

  ProductFilter get productFilter;
  @JsonKey(ignore: true)
  _$FilteredCopyWith<_Filtered> get copyWith =>
      throw _privateConstructorUsedError;
}
