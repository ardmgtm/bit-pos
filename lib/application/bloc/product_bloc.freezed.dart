// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  _Started started() {
    return const _Started();
  }

  _CreateProduct createProduct(Product product) {
    return _CreateProduct(
      product,
    );
  }

  _GetProducts getProducts() {
    return const _GetProducts();
  }

  _UpdateProduct updateProduct(Product product) {
    return _UpdateProduct(
      product,
    );
  }

  _DeleteProduct deleteProduct(int id) {
    return _DeleteProduct(
      id,
    );
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) createProduct,
    required TResult Function() getProducts,
    required TResult Function(Product product) updateProduct,
    required TResult Function(int id) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
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
    return 'ProductEvent.started()';
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
    required TResult Function(Product product) createProduct,
    required TResult Function() getProducts,
    required TResult Function(Product product) updateProduct,
    required TResult Function(int id) deleteProduct,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
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
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$CreateProductCopyWith<$Res> {
  factory _$CreateProductCopyWith(
          _CreateProduct value, $Res Function(_CreateProduct) then) =
      __$CreateProductCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$CreateProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$CreateProductCopyWith<$Res> {
  __$CreateProductCopyWithImpl(
      _CreateProduct _value, $Res Function(_CreateProduct) _then)
      : super(_value, (v) => _then(v as _CreateProduct));

  @override
  _CreateProduct get _value => super._value as _CreateProduct;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_CreateProduct(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
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

class _$_CreateProduct implements _CreateProduct {
  const _$_CreateProduct(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductEvent.createProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProduct &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$CreateProductCopyWith<_CreateProduct> get copyWith =>
      __$CreateProductCopyWithImpl<_CreateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) createProduct,
    required TResult Function() getProducts,
    required TResult Function(Product product) updateProduct,
    required TResult Function(int id) deleteProduct,
  }) {
    return createProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
  }) {
    return createProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return createProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return createProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (createProduct != null) {
      return createProduct(this);
    }
    return orElse();
  }
}

abstract class _CreateProduct implements ProductEvent {
  const factory _CreateProduct(Product product) = _$_CreateProduct;

  Product get product;
  @JsonKey(ignore: true)
  _$CreateProductCopyWith<_CreateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetProductsCopyWith<$Res> {
  factory _$GetProductsCopyWith(
          _GetProducts value, $Res Function(_GetProducts) then) =
      __$GetProductsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetProductsCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$GetProductsCopyWith<$Res> {
  __$GetProductsCopyWithImpl(
      _GetProducts _value, $Res Function(_GetProducts) _then)
      : super(_value, (v) => _then(v as _GetProducts));

  @override
  _GetProducts get _value => super._value as _GetProducts;
}

/// @nodoc

class _$_GetProducts implements _GetProducts {
  const _$_GetProducts();

  @override
  String toString() {
    return 'ProductEvent.getProducts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetProducts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) createProduct,
    required TResult Function() getProducts,
    required TResult Function(Product product) updateProduct,
    required TResult Function(int id) deleteProduct,
  }) {
    return getProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
  }) {
    return getProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return getProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return getProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (getProducts != null) {
      return getProducts(this);
    }
    return orElse();
  }
}

abstract class _GetProducts implements ProductEvent {
  const factory _GetProducts() = _$_GetProducts;
}

/// @nodoc
abstract class _$UpdateProductCopyWith<$Res> {
  factory _$UpdateProductCopyWith(
          _UpdateProduct value, $Res Function(_UpdateProduct) then) =
      __$UpdateProductCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$UpdateProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$UpdateProductCopyWith<$Res> {
  __$UpdateProductCopyWithImpl(
      _UpdateProduct _value, $Res Function(_UpdateProduct) _then)
      : super(_value, (v) => _then(v as _UpdateProduct));

  @override
  _UpdateProduct get _value => super._value as _UpdateProduct;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_UpdateProduct(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
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

class _$_UpdateProduct implements _UpdateProduct {
  const _$_UpdateProduct(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductEvent.updateProduct(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateProduct &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$UpdateProductCopyWith<_UpdateProduct> get copyWith =>
      __$UpdateProductCopyWithImpl<_UpdateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) createProduct,
    required TResult Function() getProducts,
    required TResult Function(Product product) updateProduct,
    required TResult Function(int id) deleteProduct,
  }) {
    return updateProduct(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
  }) {
    return updateProduct?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return updateProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return updateProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (updateProduct != null) {
      return updateProduct(this);
    }
    return orElse();
  }
}

abstract class _UpdateProduct implements ProductEvent {
  const factory _UpdateProduct(Product product) = _$_UpdateProduct;

  Product get product;
  @JsonKey(ignore: true)
  _$UpdateProductCopyWith<_UpdateProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteProductCopyWith<$Res> {
  factory _$DeleteProductCopyWith(
          _DeleteProduct value, $Res Function(_DeleteProduct) then) =
      __$DeleteProductCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class __$DeleteProductCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res>
    implements _$DeleteProductCopyWith<$Res> {
  __$DeleteProductCopyWithImpl(
      _DeleteProduct _value, $Res Function(_DeleteProduct) _then)
      : super(_value, (v) => _then(v as _DeleteProduct));

  @override
  _DeleteProduct get _value => super._value as _DeleteProduct;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DeleteProduct(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteProduct implements _DeleteProduct {
  const _$_DeleteProduct(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ProductEvent.deleteProduct(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteProduct &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$DeleteProductCopyWith<_DeleteProduct> get copyWith =>
      __$DeleteProductCopyWithImpl<_DeleteProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product product) createProduct,
    required TResult Function() getProducts,
    required TResult Function(Product product) updateProduct,
    required TResult Function(int id) deleteProduct,
  }) {
    return deleteProduct(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
  }) {
    return deleteProduct?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product product)? createProduct,
    TResult Function()? getProducts,
    TResult Function(Product product)? updateProduct,
    TResult Function(int id)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateProduct value) createProduct,
    required TResult Function(_GetProducts value) getProducts,
    required TResult Function(_UpdateProduct value) updateProduct,
    required TResult Function(_DeleteProduct value) deleteProduct,
  }) {
    return deleteProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
  }) {
    return deleteProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateProduct value)? createProduct,
    TResult Function(_GetProducts value)? getProducts,
    TResult Function(_UpdateProduct value)? updateProduct,
    TResult Function(_DeleteProduct value)? deleteProduct,
    required TResult orElse(),
  }) {
    if (deleteProduct != null) {
      return deleteProduct(this);
    }
    return orElse();
  }
}

abstract class _DeleteProduct implements ProductEvent {
  const factory _DeleteProduct(int id) = _$_DeleteProduct;

  int get id;
  @JsonKey(ignore: true)
  _$DeleteProductCopyWith<_DeleteProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error({String? msg}) {
    return _Error(
      msg: msg,
    );
  }

  _ProductLoaded productLoaded(Product product) {
    return _ProductLoaded(
      product,
    );
  }

  _ProductsLoaded productsLoaded(List<Product> products) {
    return _ProductsLoaded(
      products,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? msg) error,
    required TResult Function(Product product) productLoaded,
    required TResult Function(List<Product> products) productsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProductLoaded value) productLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
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
    return 'ProductState.initial()';
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
    required TResult Function() loading,
    required TResult Function(String? msg) error,
    required TResult Function(Product product) productLoaded,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProductLoaded value) productLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? msg) error,
    required TResult Function(Product product) productLoaded,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProductLoaded value) productLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? msg});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_Error(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({this.msg});

  @override
  final String? msg;

  @override
  String toString() {
    return 'ProductState.error(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.msg, msg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(msg));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? msg) error,
    required TResult Function(Product product) productLoaded,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return error(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return error?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProductLoaded value) productLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ProductState {
  const factory _Error({String? msg}) = _$_Error;

  String? get msg;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductLoadedCopyWith<$Res> {
  factory _$ProductLoadedCopyWith(
          _ProductLoaded value, $Res Function(_ProductLoaded) then) =
      __$ProductLoadedCopyWithImpl<$Res>;
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$ProductLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductLoadedCopyWith<$Res> {
  __$ProductLoadedCopyWithImpl(
      _ProductLoaded _value, $Res Function(_ProductLoaded) _then)
      : super(_value, (v) => _then(v as _ProductLoaded));

  @override
  _ProductLoaded get _value => super._value as _ProductLoaded;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_ProductLoaded(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
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

class _$_ProductLoaded implements _ProductLoaded {
  const _$_ProductLoaded(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'ProductState.productLoaded(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductLoaded &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$ProductLoadedCopyWith<_ProductLoaded> get copyWith =>
      __$ProductLoadedCopyWithImpl<_ProductLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? msg) error,
    required TResult Function(Product product) productLoaded,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return productLoaded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return productLoaded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
    required TResult orElse(),
  }) {
    if (productLoaded != null) {
      return productLoaded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProductLoaded value) productLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
  }) {
    return productLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
  }) {
    return productLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (productLoaded != null) {
      return productLoaded(this);
    }
    return orElse();
  }
}

abstract class _ProductLoaded implements ProductState {
  const factory _ProductLoaded(Product product) = _$_ProductLoaded;

  Product get product;
  @JsonKey(ignore: true)
  _$ProductLoadedCopyWith<_ProductLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ProductsLoadedCopyWith<$Res> {
  factory _$ProductsLoadedCopyWith(
          _ProductsLoaded value, $Res Function(_ProductsLoaded) then) =
      __$ProductsLoadedCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class __$ProductsLoadedCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductsLoadedCopyWith<$Res> {
  __$ProductsLoadedCopyWithImpl(
      _ProductsLoaded _value, $Res Function(_ProductsLoaded) _then)
      : super(_value, (v) => _then(v as _ProductsLoaded));

  @override
  _ProductsLoaded get _value => super._value as _ProductsLoaded;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_ProductsLoaded(
      products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$_ProductsLoaded implements _ProductsLoaded {
  const _$_ProductsLoaded(this.products);

  @override
  final List<Product> products;

  @override
  String toString() {
    return 'ProductState.productsLoaded(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProductsLoaded &&
            const DeepCollectionEquality().equals(other.products, products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(products));

  @JsonKey(ignore: true)
  @override
  _$ProductsLoadedCopyWith<_ProductsLoaded> get copyWith =>
      __$ProductsLoadedCopyWithImpl<_ProductsLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String? msg) error,
    required TResult Function(Product product) productLoaded,
    required TResult Function(List<Product> products) productsLoaded,
  }) {
    return productsLoaded(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
  }) {
    return productsLoaded?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String? msg)? error,
    TResult Function(Product product)? productLoaded,
    TResult Function(List<Product> products)? productsLoaded,
    required TResult orElse(),
  }) {
    if (productsLoaded != null) {
      return productsLoaded(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_ProductLoaded value) productLoaded,
    required TResult Function(_ProductsLoaded value) productsLoaded,
  }) {
    return productsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
  }) {
    return productsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_ProductLoaded value)? productLoaded,
    TResult Function(_ProductsLoaded value)? productsLoaded,
    required TResult orElse(),
  }) {
    if (productsLoaded != null) {
      return productsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoaded implements ProductState {
  const factory _ProductsLoaded(List<Product> products) = _$_ProductsLoaded;

  List<Product> get products;
  @JsonKey(ignore: true)
  _$ProductsLoadedCopyWith<_ProductsLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
