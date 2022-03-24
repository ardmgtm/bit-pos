// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {@JsonKey(name: columnId, defaultValue: 0) int? id,
      @JsonKey(name: columnName) required String name,
      @JsonKey(name: columnPrice) required double price,
      @JsonKey(name: columnCategory) required String category,
      @JsonKey(name: columnImage) required String image,
      @JsonKey(name: columnBarcode) String? barcode}) {
    return _Product(
      id: id,
      name: name,
      price: price,
      category: category,
      image: image,
      barcode: barcode,
    );
  }

  Product fromJson(Map<String, Object?> json) {
    return Product.fromJson(json);
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  @JsonKey(name: columnId, defaultValue: 0)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: columnName)
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: columnPrice)
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: columnCategory)
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: columnImage)
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: columnBarcode)
  String? get barcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: columnId, defaultValue: 0) int? id,
      @JsonKey(name: columnName) String name,
      @JsonKey(name: columnPrice) double price,
      @JsonKey(name: columnCategory) String category,
      @JsonKey(name: columnImage) String image,
      @JsonKey(name: columnBarcode) String? barcode});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: columnId, defaultValue: 0) int? id,
      @JsonKey(name: columnName) String name,
      @JsonKey(name: columnPrice) double price,
      @JsonKey(name: columnCategory) String category,
      @JsonKey(name: columnImage) String image,
      @JsonKey(name: columnBarcode) String? barcode});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? barcode = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      barcode: barcode == freezed
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {@JsonKey(name: columnId, defaultValue: 0) this.id,
      @JsonKey(name: columnName) required this.name,
      @JsonKey(name: columnPrice) required this.price,
      @JsonKey(name: columnCategory) required this.category,
      @JsonKey(name: columnImage) required this.image,
      @JsonKey(name: columnBarcode) this.barcode});

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  @JsonKey(name: columnId, defaultValue: 0)
  final int? id;
  @override
  @JsonKey(name: columnName)
  final String name;
  @override
  @JsonKey(name: columnPrice)
  final double price;
  @override
  @JsonKey(name: columnCategory)
  final String category;
  @override
  @JsonKey(name: columnImage)
  final String image;
  @override
  @JsonKey(name: columnBarcode)
  final String? barcode;

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, category: $category, image: $image, barcode: $barcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Product &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.barcode, barcode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(barcode));

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: columnId, defaultValue: 0) int? id,
      @JsonKey(name: columnName) required String name,
      @JsonKey(name: columnPrice) required double price,
      @JsonKey(name: columnCategory) required String category,
      @JsonKey(name: columnImage) required String image,
      @JsonKey(name: columnBarcode) String? barcode}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  @JsonKey(name: columnId, defaultValue: 0)
  int? get id;
  @override
  @JsonKey(name: columnName)
  String get name;
  @override
  @JsonKey(name: columnPrice)
  double get price;
  @override
  @JsonKey(name: columnCategory)
  String get category;
  @override
  @JsonKey(name: columnImage)
  String get image;
  @override
  @JsonKey(name: columnBarcode)
  String? get barcode;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
