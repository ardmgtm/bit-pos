// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionItem _$TransactionItemFromJson(Map<String, dynamic> json) {
  return _TransactionItem.fromJson(json);
}

/// @nodoc
class _$TransactionItemTearOff {
  const _$TransactionItemTearOff();

  _TransactionItem call(
      {@JsonKey(defaultValue: 0, name: columnId) int? id,
      @JsonKey(name: columnProductId) required int productId,
      @JsonKey(name: columnProductName) required String productName,
      @JsonKey(name: columnPrice) required double price,
      @JsonKey(name: columnItemCount) required int itemCount,
      @JsonKey(name: columnTotalPrice) required double totalPrice}) {
    return _TransactionItem(
      id: id,
      productId: productId,
      productName: productName,
      price: price,
      itemCount: itemCount,
      totalPrice: totalPrice,
    );
  }

  TransactionItem fromJson(Map<String, Object?> json) {
    return TransactionItem.fromJson(json);
  }
}

/// @nodoc
const $TransactionItem = _$TransactionItemTearOff();

/// @nodoc
mixin _$TransactionItem {
  @JsonKey(defaultValue: 0, name: columnId)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: columnProductId)
  int get productId => throw _privateConstructorUsedError;
  @JsonKey(name: columnProductName)
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: columnPrice)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: columnItemCount)
  int get itemCount => throw _privateConstructorUsedError;
  @JsonKey(name: columnTotalPrice)
  double get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionItemCopyWith<TransactionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionItemCopyWith<$Res> {
  factory $TransactionItemCopyWith(
          TransactionItem value, $Res Function(TransactionItem) then) =
      _$TransactionItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: 0, name: columnId) int? id,
      @JsonKey(name: columnProductId) int productId,
      @JsonKey(name: columnProductName) String productName,
      @JsonKey(name: columnPrice) double price,
      @JsonKey(name: columnItemCount) int itemCount,
      @JsonKey(name: columnTotalPrice) double totalPrice});
}

/// @nodoc
class _$TransactionItemCopyWithImpl<$Res>
    implements $TransactionItemCopyWith<$Res> {
  _$TransactionItemCopyWithImpl(this._value, this._then);

  final TransactionItem _value;
  // ignore: unused_field
  final $Res Function(TransactionItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? price = freezed,
    Object? itemCount = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TransactionItemCopyWith<$Res>
    implements $TransactionItemCopyWith<$Res> {
  factory _$TransactionItemCopyWith(
          _TransactionItem value, $Res Function(_TransactionItem) then) =
      __$TransactionItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: 0, name: columnId) int? id,
      @JsonKey(name: columnProductId) int productId,
      @JsonKey(name: columnProductName) String productName,
      @JsonKey(name: columnPrice) double price,
      @JsonKey(name: columnItemCount) int itemCount,
      @JsonKey(name: columnTotalPrice) double totalPrice});
}

/// @nodoc
class __$TransactionItemCopyWithImpl<$Res>
    extends _$TransactionItemCopyWithImpl<$Res>
    implements _$TransactionItemCopyWith<$Res> {
  __$TransactionItemCopyWithImpl(
      _TransactionItem _value, $Res Function(_TransactionItem) _then)
      : super(_value, (v) => _then(v as _TransactionItem));

  @override
  _TransactionItem get _value => super._value as _TransactionItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? productName = freezed,
    Object? price = freezed,
    Object? itemCount = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_TransactionItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: productId == freezed
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: productName == freezed
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      itemCount: itemCount == freezed
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: totalPrice == freezed
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionItem extends _TransactionItem {
  const _$_TransactionItem(
      {@JsonKey(defaultValue: 0, name: columnId) this.id,
      @JsonKey(name: columnProductId) required this.productId,
      @JsonKey(name: columnProductName) required this.productName,
      @JsonKey(name: columnPrice) required this.price,
      @JsonKey(name: columnItemCount) required this.itemCount,
      @JsonKey(name: columnTotalPrice) required this.totalPrice})
      : super._();

  factory _$_TransactionItem.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionItemFromJson(json);

  @override
  @JsonKey(defaultValue: 0, name: columnId)
  final int? id;
  @override
  @JsonKey(name: columnProductId)
  final int productId;
  @override
  @JsonKey(name: columnProductName)
  final String productName;
  @override
  @JsonKey(name: columnPrice)
  final double price;
  @override
  @JsonKey(name: columnItemCount)
  final int itemCount;
  @override
  @JsonKey(name: columnTotalPrice)
  final double totalPrice;

  @override
  String toString() {
    return 'TransactionItem(id: $id, productId: $productId, productName: $productName, price: $price, itemCount: $itemCount, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.productId, productId) &&
            const DeepCollectionEquality()
                .equals(other.productName, productName) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.itemCount, itemCount) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(productId),
      const DeepCollectionEquality().hash(productName),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(itemCount),
      const DeepCollectionEquality().hash(totalPrice));

  @JsonKey(ignore: true)
  @override
  _$TransactionItemCopyWith<_TransactionItem> get copyWith =>
      __$TransactionItemCopyWithImpl<_TransactionItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionItemToJson(this);
  }
}

abstract class _TransactionItem extends TransactionItem {
  const factory _TransactionItem(
          {@JsonKey(defaultValue: 0, name: columnId) int? id,
          @JsonKey(name: columnProductId) required int productId,
          @JsonKey(name: columnProductName) required String productName,
          @JsonKey(name: columnPrice) required double price,
          @JsonKey(name: columnItemCount) required int itemCount,
          @JsonKey(name: columnTotalPrice) required double totalPrice}) =
      _$_TransactionItem;
  const _TransactionItem._() : super._();

  factory _TransactionItem.fromJson(Map<String, dynamic> json) =
      _$_TransactionItem.fromJson;

  @override
  @JsonKey(defaultValue: 0, name: columnId)
  int? get id;
  @override
  @JsonKey(name: columnProductId)
  int get productId;
  @override
  @JsonKey(name: columnProductName)
  String get productName;
  @override
  @JsonKey(name: columnPrice)
  double get price;
  @override
  @JsonKey(name: columnItemCount)
  int get itemCount;
  @override
  @JsonKey(name: columnTotalPrice)
  double get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$TransactionItemCopyWith<_TransactionItem> get copyWith =>
      throw _privateConstructorUsedError;
}
