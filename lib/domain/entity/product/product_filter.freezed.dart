// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductFilterTearOff {
  const _$ProductFilterTearOff();

  _ProductFilter call(
      {required List<Product> products,
      String? searchFilter,
      String? categoryFilter}) {
    return _ProductFilter(
      products: products,
      searchFilter: searchFilter,
      categoryFilter: categoryFilter,
    );
  }
}

/// @nodoc
const $ProductFilter = _$ProductFilterTearOff();

/// @nodoc
mixin _$ProductFilter {
  List<Product> get products => throw _privateConstructorUsedError;
  String? get searchFilter => throw _privateConstructorUsedError;
  String? get categoryFilter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductFilterCopyWith<ProductFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFilterCopyWith<$Res> {
  factory $ProductFilterCopyWith(
          ProductFilter value, $Res Function(ProductFilter) then) =
      _$ProductFilterCopyWithImpl<$Res>;
  $Res call(
      {List<Product> products, String? searchFilter, String? categoryFilter});
}

/// @nodoc
class _$ProductFilterCopyWithImpl<$Res>
    implements $ProductFilterCopyWith<$Res> {
  _$ProductFilterCopyWithImpl(this._value, this._then);

  final ProductFilter _value;
  // ignore: unused_field
  final $Res Function(ProductFilter) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? searchFilter = freezed,
    Object? categoryFilter = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      searchFilter: searchFilter == freezed
          ? _value.searchFilter
          : searchFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryFilter: categoryFilter == freezed
          ? _value.categoryFilter
          : categoryFilter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductFilterCopyWith<$Res>
    implements $ProductFilterCopyWith<$Res> {
  factory _$ProductFilterCopyWith(
          _ProductFilter value, $Res Function(_ProductFilter) then) =
      __$ProductFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Product> products, String? searchFilter, String? categoryFilter});
}

/// @nodoc
class __$ProductFilterCopyWithImpl<$Res>
    extends _$ProductFilterCopyWithImpl<$Res>
    implements _$ProductFilterCopyWith<$Res> {
  __$ProductFilterCopyWithImpl(
      _ProductFilter _value, $Res Function(_ProductFilter) _then)
      : super(_value, (v) => _then(v as _ProductFilter));

  @override
  _ProductFilter get _value => super._value as _ProductFilter;

  @override
  $Res call({
    Object? products = freezed,
    Object? searchFilter = freezed,
    Object? categoryFilter = freezed,
  }) {
    return _then(_ProductFilter(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      searchFilter: searchFilter == freezed
          ? _value.searchFilter
          : searchFilter // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryFilter: categoryFilter == freezed
          ? _value.categoryFilter
          : categoryFilter // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProductFilter extends _ProductFilter {
  const _$_ProductFilter(
      {required this.products, this.searchFilter, this.categoryFilter})
      : super._();

  @override
  final List<Product> products;
  @override
  final String? searchFilter;
  @override
  final String? categoryFilter;

  @override
  String toString() {
    return 'ProductFilter(products: $products, searchFilter: $searchFilter, categoryFilter: $categoryFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductFilter &&
            const DeepCollectionEquality().equals(other.products, products) &&
            const DeepCollectionEquality()
                .equals(other.searchFilter, searchFilter) &&
            const DeepCollectionEquality()
                .equals(other.categoryFilter, categoryFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(products),
      const DeepCollectionEquality().hash(searchFilter),
      const DeepCollectionEquality().hash(categoryFilter));

  @JsonKey(ignore: true)
  @override
  _$ProductFilterCopyWith<_ProductFilter> get copyWith =>
      __$ProductFilterCopyWithImpl<_ProductFilter>(this, _$identity);
}

abstract class _ProductFilter extends ProductFilter {
  const factory _ProductFilter(
      {required List<Product> products,
      String? searchFilter,
      String? categoryFilter}) = _$_ProductFilter;
  const _ProductFilter._() : super._();

  @override
  List<Product> get products;
  @override
  String? get searchFilter;
  @override
  String? get categoryFilter;
  @override
  @JsonKey(ignore: true)
  _$ProductFilterCopyWith<_ProductFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
