// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartItemTearOff {
  const _$CartItemTearOff();

  _CartItem call({required Product product, required int itemCount}) {
    return _CartItem(
      product: product,
      itemCount: itemCount,
    );
  }
}

/// @nodoc
const $CartItem = _$CartItemTearOff();

/// @nodoc
mixin _$CartItem {
  Product get product => throw _privateConstructorUsedError;
  int get itemCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartItemCopyWith<CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemCopyWith<$Res> {
  factory $CartItemCopyWith(CartItem value, $Res Function(CartItem) then) =
      _$CartItemCopyWithImpl<$Res>;
  $Res call({Product product, int itemCount});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class _$CartItemCopyWithImpl<$Res> implements $CartItemCopyWith<$Res> {
  _$CartItemCopyWithImpl(this._value, this._then);

  final CartItem _value;
  // ignore: unused_field
  final $Res Function(CartItem) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? itemCount = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$CartItemCopyWith<$Res> implements $CartItemCopyWith<$Res> {
  factory _$CartItemCopyWith(_CartItem value, $Res Function(_CartItem) then) =
      __$CartItemCopyWithImpl<$Res>;
  @override
  $Res call({Product product, int itemCount});

  @override
  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$CartItemCopyWithImpl<$Res> extends _$CartItemCopyWithImpl<$Res>
    implements _$CartItemCopyWith<$Res> {
  __$CartItemCopyWithImpl(_CartItem _value, $Res Function(_CartItem) _then)
      : super(_value, (v) => _then(v as _CartItem));

  @override
  _CartItem get _value => super._value as _CartItem;

  @override
  $Res call({
    Object? product = freezed,
    Object? itemCount = freezed,
  }) {
    return _then(_CartItem(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CartItem extends _CartItem {
  const _$_CartItem({required this.product, required this.itemCount})
      : super._();

  @override
  final Product product;
  @override
  final int itemCount;

  @override
  String toString() {
    return 'CartItem(product: $product, itemCount: $itemCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CartItem &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.itemCount, itemCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(itemCount));

  @JsonKey(ignore: true)
  @override
  _$CartItemCopyWith<_CartItem> get copyWith =>
      __$CartItemCopyWithImpl<_CartItem>(this, _$identity);
}

abstract class _CartItem extends CartItem {
  const factory _CartItem({required Product product, required int itemCount}) =
      _$_CartItem;
  const _CartItem._() : super._();

  @override
  Product get product;
  @override
  int get itemCount;
  @override
  @JsonKey(ignore: true)
  _$CartItemCopyWith<_CartItem> get copyWith =>
      throw _privateConstructorUsedError;
}
